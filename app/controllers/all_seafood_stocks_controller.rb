class AllSeafoodStocksController < ApplicationController
  def index
  end

  def new
    @fishes = Fish.all()
    @seafood = AllSeafoodStock.new()
  end

  def create
    # puts seafood_array_params.inspect
    # @seafood = AllSeafoodStock.new(seafood_array_params)

    stall_id = params[:seafood][:stall_id]
    fish_ids = params[:seafood][:fish_id]
    volume_kgs = params[:seafood][:volume_kg]
    price_dollarsPerKgs = params[:seafood][:price_dollarsPerKg]


    # loop though i = 0 until i is length of fish_ids
    for i in 0..fish_ids.length - 1 do
      puts "#{i} looping"
      @seafood = AllSeafoodStock.new
      @seafood.stall_id = stall_id
      @seafood.fish_id = fish_ids[i]
      @seafood.volume_kg = volume_kgs[i]
      @seafood.price_dollarsPerKg = price_dollarsPerKgs[i]
      @seafood.save!
    end

    # end loop

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
