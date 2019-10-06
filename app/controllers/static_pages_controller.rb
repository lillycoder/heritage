class StaticPagesController < ApplicationController

  def index
    @townhouse = Townhouse.all
    @user = User.last
  end
  def show
    @townhouse = Townhouse.all
  end
end
