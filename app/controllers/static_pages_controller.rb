class StaticPagesController < ApplicationController

  def index
    @townhouse = Townhouse.all
    @user = User.last
    @gram = Gram.all
  end
  def show
    @townhouse = Townhouse.all
  end
end
