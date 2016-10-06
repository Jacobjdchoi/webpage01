class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:index, :show]

  def index
    @customers = Customer.all
  end

  def show
  end

  def new
    @customer = Customer.new
  end

  def edit
  end

  def create
    @customer = Customer.new(customer_params)
      if @customer.save
        if params[:customer][:pics].present?
          render :crop
        else
          redirect_to @customer
        end
      else
        render :new
      end
  end
  
  def crop
  end

  def update
      if @customer.update(customer_params)
        if params[:customer][:pics].present?
          render :crop
        else
          redirect_to @customer
        end
      else
        render :edit
      end
  end

  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_customer
      @customer = Customer.find(params[:id])
    end

    def customer_params
      params.require(:customer).permit(:name, :pics, :crop_x, :crop_y, :crop_w, :crop_h)
    end
end
