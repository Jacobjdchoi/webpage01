class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :admin_show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:index, :show]
  before_action :to_crop_obj, only: [:edit, :update]
  before_action :crop_ratio, only: [:create, :update]


  def index
    @customers = Customer.all
  end

  def admin_index
    @customers = Customer.all
  end

  def show
  end

  def admin_show

  end

  def new
    @customer = Customer.new
  end

  def edit
  end

  def create
    @customer = Customer.new(customer_params)
      if @customer.save
        if @customer.photos.present?
          @crop_obj = @customer
          render "shared/crop"
        else
          render :admin_show
        end
      else
        render :new
      end
  end

  def crop
  end

  def update
      if @customer.update(customer_params)
        if @customer.photos.present?
          render "shared/crop"
        else
          render :admin_show
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

    def to_crop_obj
      @crop_obj = @customer
    end

    def crop_ratio
      @crop_ratio = 0
    end

    def customer_params
      params.require(:customer).permit(*Customer.globalize_attribute_names, photos_attributes: [:id, :pics, :_destroy, :customer_id])
    end
end
