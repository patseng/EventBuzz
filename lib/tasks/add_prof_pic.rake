task :add_prof_pic => :environment do
  User.all.each do |user|
    user.prof_pic_link = "http://graph.facebook.com/#{user.uid}/picture"
    user.save
  end
end