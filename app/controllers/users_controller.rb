class UsersController < ApplicationController
  
  def new 
    @user = User.new 
  end 

  def create 
    @user = User.new(create_user_params)
    if @user.save 
      redirect_to root_path, notice: "Your account is created, please Login"
    else 
      render :new, status: :unprocessable_entity 
    end
  end 

  def destroy 
  end 

  def edit 
    @user = current_user 
  end 

  def update 
  end 


  private  
    def create_user_params 
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :role)
    end 

    def update_user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :role)
    end 


end
