class EventsController < ApplicationController
  def new
    @event = Event.new
  end
  
  def create
    @event = Event.new params[:event]
    @event.start_datetime = DateTime.strptime(params[:event]['start_datetime'], "%m/%d/%Y %H:%M")
    @event.end_datetime = DateTime.strptime(params[:event]['end_datetime'], "%m/%d/%Y %H:%M")
    @event.save
    redirect_to :root
  end
end
