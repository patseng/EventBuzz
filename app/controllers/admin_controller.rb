class AdminController < ApplicationController
	def view
		@active_users = User.all
	end
end