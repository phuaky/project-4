class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  before_action :current_user, :stall_owner


  def is_authenticated
    unless current_user
      flash[:danger] = "Credentials Invalid!!"
      redirect_to login_path
    end
  end

  def current_user
    @current_user ||= UserProfile.find_by_id(session[:user_id])
  end

  def stall_owner
    if @current_user
      @stall_owner ||= Stall.find_by_user_profile_id(@current_user.id)
    end
  end
end
