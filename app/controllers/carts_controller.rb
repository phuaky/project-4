class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  # GET /carts
  # GET /carts.json
  def index
    @carts = Cart.where("customer_id = #{@customer.id}").order("updated_at DESC")
  end

  # GET /carts/1
  # GET /carts/1.json
  def show
  end

  # GET /carts/new
  def new
    @cart = Cart.new
  end

  # GET /carts/1/edit
  def edit
  end

  # POST /carts
  # POST /carts.json
  def create
    @cart = Cart.new(cart_params)

      if @cart.save!
        flash[:success] = "Added to cart!!"
        redirect_to root_path
      else
        flash[:negative] = "Failed to add to cart!!"
        redirect_to root_path
      end
  end

  # PATCH/PUT /carts/1
  # PATCH/PUT /carts/1.json
  def update
      if @cart.update(cart_params)
        flash[:success] = "Cart was successfully updated!!"
        redirect_to @cart
      else
        render :edit
      end
  end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
    @cart.destroy
    flash[:success] = "Item was removed from cart!!"
    redirect_to carts_url, notice: ''
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_params
      params.require(:cart).permit(:customer_id, :stall_id, :fish_id, :qty, :price)
    end
end
