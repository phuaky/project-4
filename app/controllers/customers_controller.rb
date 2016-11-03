class CustomersController < ApplicationController
  def new
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save!
      flash[:success] = "Customer Created!!"
      redirect_to root_path
    else
      flash[:negative] = "Customer creation failed.."
      redirect_to root_path
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:user_profile_id)
    end
end
