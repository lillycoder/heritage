class Owner::TownhousesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]

  def new
    @townhouse = Townhouse.new
  end

  def create
    @townhouse = current_user.townhouses.create(townhouse_params)
    if @townhouse.valid?
      redirect_to owner_townhouse_path(@townhouse)
    else
      render :new, status: :unprocessable_entity
    end
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
    redirect_to root_path
  end

  private

  def townhouse_params
    params.require(:townhouse).permit(:name, :address, :primaryphone, :secondaryphone, :primaryemail, :secondaryemail, :emergency, :comment) 
  end

  end