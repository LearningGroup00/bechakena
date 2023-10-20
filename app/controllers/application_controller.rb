class ApplicationController < ActionController::Base
  before_action :authenticate_user

  def authenticate_user
    if session[:user_id].present?
      @current_user= User.find(session[:user_id])
    else
      redirect_to sign_in_view_url,notice: "Login Please"
    end
  end
end

