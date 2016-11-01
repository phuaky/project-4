class AllSeafoodStocksController < ApplicationController
  def index
  end

  def new
    @fishes = Fish.all()
  end

  def create
    puts ">>> #{seafood_params}"
    @seafood = AllSeafoodStock.new(seafood_params)
    puts "thiss the seafood params: #{@seafood}"

    if @seafood.save!
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
      params.require(:seafood).permit(:stall_id, :fish_id, :volume_kg, :price_dollarsPerKg)
    end
end
