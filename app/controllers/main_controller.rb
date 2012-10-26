class MainController < ApplicationController
  def index
    @events = ["Obama Talk", "Romney Talk", "Big Bird Talk", 
              "Basketball Game", "Big Game", "Tennis Match", "CS Career Fair"]
  end
end