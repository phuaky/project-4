class UserProfilesController < ApplicationController
  before_action :set_user_profile, only: [:show, :edit, :update, :destroy]

  # GET /user_profiles
  # GET /user_profiles.json
  def index
    @user_profiles = UserProfile.all
  end

  # GET /user_profiles/1
  # GET /user_profiles/1.json
  def show
  end

  # GET /user_profiles/new
  def new
    @user_profile = UserProfile.new
  end

  # GET /user_profiles/1/edit
  def edit
  end

  # POST /user_profiles
  # POST /user_profiles.json
  def create
    @user_profile = UserProfile.new(user_profile_params)

    if @user_profile.save
      flash[:success] = "User Created!!"
      redirect_to root_path
    else
      flash[:negative] = "Signup Fail!!"
      redirect_to root_path
    end
  end

  # PATCH/PUT /user_profiles/1
  # PATCH/PUT /user_profiles/1.json
  def update
      if @user_profile.update(user_profile_params)
        flash[:success] = "User updated!!"
        redirect_to root_path
      else
        flash[:success] = "User failed to update!!"
        redirect_to root_path
      end
  end

  # DELETE /user_profiles/1
  # DELETE /user_profiles/1.json
  def destroy
    @user_profile.destroy
      redirect_to user_profiles_url, notice: 'User profile was successfully destroyed.'
      head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_profile
      @user_profile = UserProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_profile_params
      params.require(:user_profile).permit(:email, :password, :firstName, :lastName, :handphone, :user_class_id)
    end
end
