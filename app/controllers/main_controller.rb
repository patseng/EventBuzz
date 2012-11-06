class MainController < ApplicationController
  def index
    @my_events_today = current_user.events
    @all_events = Event.all
    @active_users = User.all
    @event_categories = {:Sports => @all_events[0...4], :Talks => @all_events[5...9]}
    gon.rabl "app/views/events/map.json.rabl", as: "events"
  end

  def get_event_detail
  	@event = Event.find(params['event'])
  	@event_title = @event.event_title()
  	@event_time = @event.start_datetime()
  	@location = @event.location()
  	@description = @event.description()
  end
end