class TownhousesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show]
  def index
    @townhouse = Townhouse.all
  end
end
