class RsvpsController < ApplicationController
  def create
    rsvp = Rsvp.find_by_user_id_and_event_id(current_user.id, params[:event_id])
    Rsvp.create({:user => current_user, :event_id => params[:event_id]}) if !rsvp
    render :nothing => true
  end
  
  def destroy 
    rsvp = Rsvp.find_by_user_id_and_event_id(current_user.id, params[:format])
    rsvp.destroy if rsvp
    render :nothing => true
  end
end