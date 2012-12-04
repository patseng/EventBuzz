task :add_prof_pic => :environment do
  User.all.each do |user|
    user.prof_pic_link = user.facebook.get_picture("me")
    user.save
  end
end