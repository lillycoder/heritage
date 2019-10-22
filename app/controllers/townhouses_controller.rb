class TownhousesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show]
  def index
    @townhouse = Townhouse.all
  end
  def show
    @townhouse = Townhouse.find(params[:id])
  end

  def edit
    @townhouse = Townhouse.find(params[:id])
  end

  def update
    @townhouse = Townhouse.find(params[:id])
    @townhouse.update_attributes(townhouse_params)
    redirect_to owner_townhouse_path(@townhouse)
  end

  private

  def townhouse_params
    params.require(:townhouse).permit(:name, :address, :primaryphone, :secondaryphone, :primaryemail, :secondaryemail, :emergency, :comment) 
  end
end
