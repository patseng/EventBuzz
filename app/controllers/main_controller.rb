class MainController < ApplicationController
  def index
    @my_events_today = []
    @my_events_today = current_user.events if current_user
    @all_events = Event.all
    @active_users = User.all
    @categories = Category.all
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