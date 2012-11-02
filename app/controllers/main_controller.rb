class MainController < ApplicationController
  def index
    @events = ["Obama Talk", "Romney Talk", "Big Bird Talk", 
              "Basketball Game", "Big Game", "Tennis Match", "CS Career Fair"]
     
    @my_events_today = Event.all
    @my_events_tomorrow = ["Poop Match"]
    @active_users = User.all
  end

  def get_event_detail
  	event = Event.find(params['event'])
  	@event_title = event.event_title()
  	@event_time = event.start_datetime()
  	@location = event.location()
  	@description = event.description()
  end
end