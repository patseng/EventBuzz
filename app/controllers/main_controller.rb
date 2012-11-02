class MainController < ApplicationController
  def index
    @my_events_today = Event.all
    @all_events = Event.all
    @my_events_tomorrow = Array.new
    @active_users = User.all
    gon.rabl "app/views/events/map.json.rabl", as: "events"
  end

  def get_event_detail
  	event = Event.find(params['event'])
  	@event_title = event.event_title()
  	@event_time = event.start_datetime()
  	@location = event.location()
  	@description = event.description()
  end
end