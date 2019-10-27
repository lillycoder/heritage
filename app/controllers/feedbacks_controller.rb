class FeedbacksController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.create(feedback_params)
    redirect_to townhouses_path
  end

  def show
    
  end

  private

  def feedback_params
    params.require(:feedback).permit(:message)
  end
end
