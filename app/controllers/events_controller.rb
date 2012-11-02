class EventsController < ApplicationController
  def new
    @event = Event.new
  end
  
  def create
    @event = Event.create params[:event]
    redirect_to :root
  end
end
