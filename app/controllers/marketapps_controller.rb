class MarketappsController < ApplicationController
  before_action :set_marketapp, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!
  def show
  end
  def index
    @marketapps = Marketapp.all. order(updated_at: :desc)
  end
  def new
    @marketapp = Marketapp.new
  end
  def create
    @marketapp = Marketapp.new(marketapps_params)
    if @marketapp.save
      redirect_to action: :index
    end
  end
  def edit
  end
  def update
    if @marketapp.update(marketapps_params)
      redirect_to action: :index
    end
  end
  def destroy
    if @marketapp.destroy
      redirect_to action: :index
    end
  end
private
  def marketapps_params
    params.require(:marketapp).permit(*Marketapp.globalize_attribute_names, :market_id)
  end
  def set_marketapp
    @marketapp = Marketapp.find(params[:id])
  end
end
