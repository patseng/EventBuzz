class MainController < ApplicationController
  def index
    # this is an empty method, but will become clear why we have done this work
    # to set it up this way later
  end
  
  def map
    # this is empty for now
  end
  
  def find
    @events = ["Obama Talk", "Romney Talk", "Big Bird Talk", "Basketball Game", "Big Game", "Tennis Match", "CS Career Fair"]
  end
    
end