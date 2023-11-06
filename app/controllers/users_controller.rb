class UsersController < ApplicationController
  
  def new 
    @user = User.new
  end 

  def create 
    @user = User.new(user_params)
    if @user.save 
      redirect_to login_path, notice: "Your account is created, please Login"
    else 
      render :new, status: :unprocessable_entity 
    end
  end 

  def destroy 
    @user.destroy 
    redirect_to root_path, notice: "Your account is deleted"
  end 

  def edit 
    find_user
  end 

  def update 
    find_user 

    if @user.update 
      redirect_to root_path 
    else 
      render :edit 
    end 
  end


  private  
    def user_params 
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :role)
    end
    
    def find_user 
      @user = User.find(params[:id])
    end 

end
