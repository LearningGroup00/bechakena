class ApplicationController < ActionController::Base
  before_action :authenticate_user 

    # Make the current_user method available to views also, not just controllers:
    helper_method :current_user
  
    # Define the current_user method:
    def current_user
      # Look up the current user based on user_id in the session cookie:
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def authenticate_user 
      redirect_to login_path, alert: 'You must be logged in to access this page.' if current_user.nil?
    end 

    # def authenticate_user 
    #   redirect_to login_path unless current_user 
    # end 
end
