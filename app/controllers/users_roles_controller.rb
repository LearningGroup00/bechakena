class UsersRolesController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(prams[:id])
  end

  def edit
    @user = User.find(prams[:id])
  end
  
  def update
  end
end
