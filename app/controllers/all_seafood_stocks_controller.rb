class AllSeafoodStocksController < ApplicationController
  def index
  end

  def new
    @fishes = Fish.all()
  end

  def create
    @seafood = AllSeafoodStock.new(seafood_params)

    if @seafood.save
      flash[:success] = "Fishie Added"
      redirect_to root_path
    else
      flash[:danger] = "Fishie Failed to upload!!"
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
    def set_seafood
      @seafood = AllSeafoodStock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seafood_params
      params.require(:seafood).permit(:fish_id, :quantity, :price)
    end
end
