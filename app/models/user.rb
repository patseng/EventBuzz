class User < ActiveRecord::Base
  has_many :friendships, :dependent => :destroy
  has_many :friends, :through => :friendships
  has_many :rsvps, :dependent => :destroy
  has_many :events, :through => :rsvps

  # rescue error
  def facebook
    begin
      @facebook ||= Koala::Facebook::API.new(self.oauth_token)
    rescue Koala::Facebook::APIError
      
    end
  end

  def friends_going(event)
    self.friends.select do |friend|
      event.users.include? friend
    end
  end

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.email = auth.info.email
      user.location = auth.info.location
      
      if user.new_record?
        user.prof_pic_link = user.facebook.get_picture("me")
        fb_friends = user.facebook.get_connection("me", "friends")
        fb_friends.each do |fb_friend|
          friend = User.find_by_uid(fb_friend['id'])
          if friend
            user.save!
            user.friendships.create(:friend_id => friend.id)
            Friendship.create(:user_id => friend.id, :friend_id => user.id)
          end
        end
      end
      user.save!
    end
  end
end
