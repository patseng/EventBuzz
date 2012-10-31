class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  def current_user
    # ask me (Peter) if any of this ruby jargon is confusing
    # this is the verbose version of the line 17
    # if session[:user_id] and User.exists?(session[:user_id])
    #   if !@current_user
    #     @current_user = User.find(session[:user_id])
    #   end
    #   
    #   return @current_user
    # end
    # 
    # return nil
    user_id = session[:user_id]
    @current_user ||= User.find(user_id) if user_id and User.exists?(user_id)
    
    return @current_user
  end
  helper_method :current_user
end
