class UsersController < ApplicationController
  
  def new 
    @user = User.new 
  end 

  def create 
    @user = User.new(user_params)
    if @user.save 
      redirect_to root_path, notice: "Your account is created, please Login"
    else 
      render :new, status: :unprocessable_entity 
    end
  end 

  private  
    def user_params 
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end 

end
