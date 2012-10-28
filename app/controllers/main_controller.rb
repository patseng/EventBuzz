class MainController < ApplicationController
  def index
    @events = ["Obama Talk", "Romney Talk", "Big Bird Talk", 
              "Basketball Game", "Big Game", "Tennis Match", "CS Career Fair"]
              
    @my_events_today = ["Obama Talk", "Dodgeball Tournament"]
    @my_events_tomorrow = ["Tennis Match"]
  end
end