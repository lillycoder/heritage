class StaticPagesController < ApplicationController

  def index
    @townhouse = Townhouse.all
    @user = User.last
    @gram = Gram.last
  end
  def show
    @townhouse = Townhouse.all
    @gram = Gram.last
  end
end
