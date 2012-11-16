class MainController < ApplicationController
  def index
    @my_events_today = if current_user then current_user.events else [] end
    @all_events = Event.all
    @active_users = User.all
    @categories = Category.all
    gon.rabl "app/views/events/my_events.json.rabl", as: "my_events"
    gon.rabl "app/views/events/map.json.rabl", as: "events"
    gon.signed_in = if current_user then true else false end
    
  end

  def get_event_detail
  	@event = Event.find(params['event'])
  	@event_title = @event.event_title()
  	@event_time = @event.start_datetime()
  	@location = @event.location()
  	@description = @event.description()
  	@friends_going = current_user.friends_going(@event)
  	if !request.xhr?
      @my_events_today = if current_user then current_user.events else [] end
      @all_events = Event.all
      @active_users = User.all
      @categories = Category.all
      gon.rabl "app/views/events/my_events.json.rabl", as: "my_events"
      gon.rabl "app/views/events/map.json.rabl", as: "events"
      gon.signed_in = if current_user then true else false end
	  end
  end
end