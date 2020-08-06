class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to FindMyView #{@user.name}!"
      redirect_to stunning_views_path
    else
      render 'new'
    end
  end

  def update
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end 
end
