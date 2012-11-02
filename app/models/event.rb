class Event < ActiveRecord::Base
	has_many :rsvps
	has_many :users, :through => :rsvps
	
	geocoded_by :location
  after_validation :geocode, :if => :location_changed?
end