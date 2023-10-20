class UsersController < ApplicationController
  skip_before_action :authenticate_user

  
  def sign_in_view
    @user=User.new
  end

  def sign_in
    user=User.find_by(email: params[:user][:email], password: params[:user][:password])
    if user
      session[:user_id] = user.id
      redirect_to categories_url
    end
  end

  def sign_up_view
    @user=User.new

  end

  def sign_up
    user=User.new(email: params[:user][:email],password: params[:user][:password])
    if user.save
     redirect_to sign_in_view_url
    else 
      render :sign_up_view
    end
  end
  def sign_out
    session[:user_id]=nil
    redirect_to homes_home_url
  end
end
