# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
		Event.create([{:event_title =>"Obama Talk"}, {:event_title => "Dodgeball Tournament"}, 
			{:event_title => "Tennis Match"}])
