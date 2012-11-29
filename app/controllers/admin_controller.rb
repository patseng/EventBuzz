class AdminController < ApplicationController
  def users
    @active_users = User.all
  end
  
  def data
    @times = []
    TimingTest.all.each do |test|
      @times << test.detail_timestamp - test.find_timestamp
    end
  end
end