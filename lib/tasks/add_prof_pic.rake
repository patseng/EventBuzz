task :add_prof_pic => :environment do
  User.all.each do |user|
    user.prof_pic_link = "graph.facebook.com/#{user.uid}/picture"
    user.save
  end
end