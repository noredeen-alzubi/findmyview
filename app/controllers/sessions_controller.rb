class SessionsController < ApplicationController

  def new
  end

  def create
    if user = User.find_by(email:params[:session][:email].downcase)
      if user.authenticate(params[:session][:password])
        reset_session
        log_in user
        redirect_to stunning_views_path
      else
        flash.now[:danger] = 'Wrong password'
        render 'new'
      end
    else
      flash.now[:danger] = 'Invalid email'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end 

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end

end

