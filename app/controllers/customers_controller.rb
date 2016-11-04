class CustomersController < ApplicationController

  def new
    @customer = Customer.new
  end

  def create
    @new_customer = Customer.create( customer_params )
    @new_customer.save

    redirect_to @new_customer

    # @customer.name = params[:customer][:name]
    # @customer.gender = params[:customer][:gender]

  end


  private

  def customer_params
    params.require(:customer).permit(:name, :gender)
  end


end
