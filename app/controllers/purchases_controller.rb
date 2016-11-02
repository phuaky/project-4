class PurchasesController < ApplicationController
  def index
  end

  def create
    # @purchase.invoice_id = @invoice

    invoice_ids = params[:purchase][:invoice_id]
    customer_id = params[:purchase][:customer_id]
    stall_ids = params[:purchase][:stall_id]
    fish_ids = params[:purchase][:fish_id]
    qtys = params[:purchase][:qty]
    prices = params[:purchase][:price]


    for i in 0..fish_ids.length - 1 do
      puts "#{i} looping"
      @purchase = Purchase.new
      @purchase.customer_id = customer_id
      @purchase.invoice_id = invoice_ids[i]
      @purchase.stall_id = stall_ids[i]
      @purchase.fish_id = fish_ids[i]
      @purchase.qty = qtys[i]
      @purchase.price = prices[i]
      @purchase.save!
    end

    flash[:success] = "Purchase Added"
    redirect_to root_path

  end

  def new
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
    def set_purchase
      @purchase = Purchase.find(params[:id])
    end
end
