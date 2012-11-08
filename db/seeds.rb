# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
        Event.destroy_all
        EventCategory.destroy_all
        Category.destroy_all

		Event.create([{:event_title =>"Obama talk", :start_datetime => "2012-11-01", :end_datetime => "2012-11-01", 
                    :location => "CEMEX, Stanford", :description => "Obama is talking about his reelection campaign"}, 
					       
					       {:event_title => "Dodgeball Tournament", :start_datetime => "2012-11-02", :end_datetime => "2012-11-02", 
                    :location => "TDX, Stanford", :description => "TDX is hosting a charity dodgeball tournament" }, 
					       
					       {:event_title => "Tennis Match", :start_datetime => "2012-11-03", :end_datetime => "2012-11-03", 
                    :location => "Taube South, Stanford", :description => "Men's Tennis plays Cal"},
                 
                 {:event_title => "Romney talk", :description => "Romney is talking!", 
                   :location => "1035 Lomita Dr, Stanford", :start_datetime => "2012-11-03", :end_datetime => "2012-11-03"},
                 
                 {:event_title => "Basketball Game", :start_datetime => "2012-11-04", :end_datetime => "2012-11-04", 
                    :location => "Maples Pavilion Stanford", :description => "Men's Basketball play USC"},
                 
                 {:event_title => "CS Career Fair", :start_datetime => "2012-11-05", :end_datetime => "2012-11-05", 
                    :location => "Packard Building, Stanford", :description => "Career Fair for CS majors!"},
                 
                 {:event_title => "Big Game", :start_datetime => "2012-11-05", :end_datetime => "2012-11-05", 
                    :location => "Football Stadium, Stanford", :description => "102nd Annual Big Game"}])

        Category.create([{:name => "Featured"}, {:name => "Sports"}, {:name => "Talks"}, {:name => "Politics"},
                        {:name => "Jobs"}, {:name => "Arts"}, {:name => "Lectures"}, {:name => "Performances"},{:name => "Classes"}])

        obama_talk = Event.find_by_event_title("Obama talk")
        dodgeball_tournament = Event.find_by_event_title("Dodgeball Tournament")
        tennis_match = Event.find_by_event_title("Tennis Match")
        romney_talk = Event.find_by_event_title("Romney talk")
        basketball_game = Event.find_by_event_title("Basketball Game")
        cs_career_fair = Event.find_by_event_title("CS Career Fair")
        big_game = Event.find_by_event_title("Big Game")

        talks = Category.find_by_name("Talks")
        lectures = Category.find_by_name("Lectures")
        classes = Category.find_by_name("Performances")
        arts = Category.find_by_name("Arts");
        featured = Category.find_by_name("Featured")
        politics = Category.find_by_name("Politics")
        jobs = Category.find_by_name("Jobs")
        sports = Category.find_by_name("Sports")

        EventCategory.create([{:event_id => obama_talk.id, :category_id => talks.id}, {:event_id => obama_talk.id, :category_id => featured.id}, 
                            {:event_id => obama_talk.id,  :category_id => politics.id}, {:event_id => dodgeball_tournament.id, :category_id => featured.id},
                            {:event_id => dodgeball_tournament.id, :category_id => sports.id}, {:event_id => tennis_match.id, :category_id => sports.id},
                            {:event_id => basketball_game.id, :category_id => sports.id},{:event_id => romney_talk.id, :category_id => talks.id},
                            {:event_id => romney_talk.id, :category_id => politics.id}, {:event_id => romney_talk.id, :category_id => politics.id},
                            {:event_id => cs_career_fair.id, :category_id => featured.id}, {:event_id => cs_career_fair.id, :category_id => jobs.id},
                            {:event_id => big_game.id, :category_id => sports.id}, {:event_id => big_game.id, :category_id => featured.id}])

