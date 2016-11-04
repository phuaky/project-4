class PurchasesController < ApplicationController
  def index
  end

  def create
    cart_ids = params[:purchase][:cart_id]
    invoice_ids = params[:purchase][:invoice_id]
    customer_id = params[:purchase][:customer_id]
    stall_ids = params[:purchase][:stall_id]
    fish_ids = params[:purchase][:fish_id]
    qtys = params[:purchase][:qty]
    prices = params[:purchase][:price]


    for i in 0..fish_ids.length - 1 do
      puts "#{i} looping"
      # Remove from global stocks
      # @seafood_stock = AllSeafoodStock.find_by_fish_id(fish_ids[i])
      # if @seafood_stock.update
      # if @user_profile.update(user_profile_params)
      #   redirect_to @user_profile, notice: 'User profile was successfully updated.'
      # else
      #   render :edit
      # end

      # Add to purchased model
      @purchase = Purchase.new
      @purchase.customer_id = customer_id
      @purchase.invoice_id = invoice_ids[i]
      @purchase.stall_id = stall_ids[i]
      @purchase.fish_id = fish_ids[i]
      @purchase.qty = qtys[i]
      @purchase.price = prices[i]
      @purchase.save!

      # Remove all items saved from cart
      @cart = Cart.find(cart_ids[i])
      @cart.destroy

      @customer = Customer.find_by_id(customer_id)
      @user = UserProfile.find_by_id(@customer.user_profile_id)
      @fish = Fish.find_by_id(fish_ids[i])

      @message = Message.new
      @message.message = "#{@user.firstName} bought #{qtys[i]}kg of #{@fish.english} at $#{prices[i]}/kg"
      @message.save!
    end

    flash[:success] = "Purchase Completed"
    redirect_to root_path

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase
      @purchase = Purchase.find(params[:id])
    end
end
