class Owner::TownhousesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :show]

  def new
    @townhouse = Townhouse.new
  end

  def create
    @townhouse = current_user.townhouses.create(townhouse_params)
    redirect_to root_path
  end

  def show
    @townhouse = Townhouse.find(params[:id])
  end

  def edit
    @townhouse = Townhouse.find(params[:id])
    redirect_to root_path
  end

  def update
    @townhouse = Townhouse.find(params[:id])
    @townhouse.update_attributes(townhouse_params)
    redirect_to root_path
  end

  def destroy
    @townhouse = Townhouse.find(params[:id])
    @townhouse.destroy
    redirect_to root_path
  end

  private

  def townhouse_params
    params.require(:townhouse).permit(:name, :address, :primaryphone, :secondaryphone, :primaryemail, :secondaryemail, :emergency, :comment) 
  end

  end