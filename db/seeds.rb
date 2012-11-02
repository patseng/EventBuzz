# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
		Event.create([{:event_title =>"Obama Talk", :start_datetime => "2012-11-01", :end_datetime => "2012-11-01", 
                    :location => "CEMEX", :description => "Obama is talking about his reelection campaign"}, 
					       
					       {:event_title => "Dodgeball Tournament", :start_datetime => "2012-11-02", :end_datetime => "2012-11-02", 
                    :location => "TDX", :description => "TDX is hosting a charity dodgeball tournament" }, 
					       
					       {:event_title => "Tennis Match", :start_datetime => "2012-11-03", :end_datetime => "2012-11-03", 
                    :location => "Taube South", :description => "Men's Tennis plays Cal"},
                 
                 {:event_title => "Romney Talk", :description => "Romney is talking!", :start_datetime => "2012-11-03", :end_datetime => "2012-11-03"},
                 
                 {:event_title => "Basketball Game", :start_datetime => "2012-11-04", :end_datetime => "2012-11-04", 
                    :location => "Maples Pavilion", :description => "Men's Basketball play USC"},
                 
                 {:event_title => "CS Career Fair", :start_datetime => "2012-11-05", :end_datetime => "2012-11-05", 
                    :location => "Packard Building", :description => "Career Fair for CS majors!"},
                 
                 {:event_title => "Big Game", :start_datetime => "2012-11-05", :end_datetime => "2012-11-05", 
                    :location => "Cal", :description => "102nd Annual Big Game"}])

