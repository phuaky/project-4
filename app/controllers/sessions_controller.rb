class SessionsController < ApplicationController

  def new
    @user = UserProfile.new
  end

  def create
    user = UserProfile.authenticate(user_params)

    if user
      session[:user_id] = user.id
      flash[:success] = 'Hi ' + user.firstName + '! Good to see you :)'
      redirect_to root_path
    else
      flash[:negative] = "Do I know you? Pls try logging in again"
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Bye, see you again!"
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
