class MainController < ApplicationController
  before_filter :check_expiration_tokens
  
  def check_expiration_tokens
    if current_user && current_user.token_expired?(current_user.oauth_expires_at)
      session[:user_id] = nil
      current_user = nil
    end
  end
  
  def index
    @my_events_today = []
    @my_events_today = current_user.events if current_user
    @all_events = Event.all
    @active_users = User.all
    @categories = Category.all
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
  end
end