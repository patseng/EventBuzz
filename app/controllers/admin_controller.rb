class AdminController < ApplicationController
  def users
    @active_users = User.all
  end
end