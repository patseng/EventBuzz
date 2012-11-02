class Event < ActiveRecord::Base
  geocoded_by :location
  after_validation :geocode, :if => :location_changed?
end
