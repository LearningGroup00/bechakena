class UsersRolesController < ApplicationController
  def index 
    
    if current_user.super_admin?
    @users = User.all 
    else 
      redirect_to root_path, notice: "You are not Allowed"
    end 
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if User.update(user_params)
      redirect_to :users_role_path
    else 
      redirect_to :edit
    end 
  end

private
  def user_params 
    #using strong parameters
    params.require(:user).permit(:email, :password, :roles)
  end 
end
