class AdminController < ApplicationController
  def users
    @active_users = User.all
  end
  
  def data
    @times = TimingTest.all
  end
end