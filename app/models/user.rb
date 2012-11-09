class User < ActiveRecord::Base

  has_many :rsvps
  has_many :events, :through => :rsvps

  def token_expired?(new_time = nil)
    expiry = (new_time.nil? ? token_expires_at : Time.at(new_time))
    return true if expiry < Time.now ## expired token, so we should quickly return
    token_expires_at = expiry
    save if changed?
    false # token not expired. :D
  end

  # rescue error
  def facebook
    @facebook ||= Koala::Facebook::API.new(self.oauth_token)
  end

  def friends
    @friends ||= self.facebook.get_connection("me", "friends")
  end

  def friends_going(event)
    self.friends.select do |friend|
      user = User.find_by_uid(friend['id'])
      user and event.users.include? user
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
      user.save!
    end
  end
end
