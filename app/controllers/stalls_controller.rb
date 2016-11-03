class StallsController < ApplicationController

  def index
    @stall_seafood = AllSeafoodStock.where("stall_id = #{@stall_owner.id}").order("updated_at DESC")
  end

  def new
    @stall = Stall.new
  end

  def create
    @stall = Stall.new(stall_params)

    if @stall.save!
      flash[:success] = "Stall Created"
      redirect_to root_path
    else
      flash[:negative] = "Stall Failed to upload!!"
      redirect_to root_path
    end
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stall
      @stall = Stall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stall_params
      params.require(:stall).permit(:user_profile_id, :name, :owner)
    end
end
