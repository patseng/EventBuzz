class Event < ActiveRecord::Base
	has_many :rsvps, :dependent => :destroy
	has_many :users, :through => :rsvps
	has_many :event_categories, :dependent => :destroy
	has_many :categories, :through => :event_categories
	
	geocoded_by :location
  after_validation :geocode, :if => :location_changed?
end