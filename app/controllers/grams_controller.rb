class GramsController < ApplicationController
  before_action :authenticate_user!
  def index
    @gram = Gram.last
  end
  
  def new
    @gram = Gram.new
  end

  def create
    @gram = Gram.create(grams_params)
    redirect_to root_path
  end

  def show
    
  end

  private

  def grams_params
    params.require(:gram).permit(:announcement)
  end

end
