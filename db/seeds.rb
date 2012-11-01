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
                    :location => "Taube South", :description => "Men's Tennis plays Cal"}])

