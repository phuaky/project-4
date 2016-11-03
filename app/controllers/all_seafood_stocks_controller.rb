class AllSeafoodStocksController < ApplicationController
  before_action :set_seafood, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @fishes = Fish.all()
    @seafood = AllSeafoodStock.new()
  end

  def create
    stall_id = params[:seafood][:stall_id]
    fish_ids = params[:seafood][:fish_id]
    volumes = params[:seafood][:volume]
    prices = params[:seafood][:price]

    for i in 0..fish_ids.length - 1 do
      puts "#{i} looping"
      @seafood = AllSeafoodStock.new
      @seafood.stall_id = stall_id
      @seafood.fish_id = fish_ids[i]
      @seafood.volume = volumes[i]
      @seafood.price = prices[i]
      @seafood.save!

      @stall = Stall.find_by_id(stall_id)
      @fish = Fish.find_by_id(fish_ids[i])

      @message = Message.new
      @message.message = "#{@stall.name} added #{volumes[i]}kg of #{@fish.english} at $#{prices[i]}/kg"
      @message.save!

    end

    flash[:success] = "Fishie Added"
    redirect_to root_path

  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
    @seafood.destroy
    flash[:success] = "Item was removed from stall!!"
    redirect_to '/stalls'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seafood
      @seafood = AllSeafoodStock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def seafood_params
    #   params.require(:seafood).permit(:stall_id, :fish_id, :volume_kg, :price_dollarsPerKg)
    # end

    # def seafood_array_params
    #   params.require(:seafood).permit(:volume_kg =>[])
    # end
end
