require 'rails_helper'

RSpec.describe FeedbacksController, type: :controller do

  describe "feedback#create action" do
  it "should successfully create a new feedback in our database" do
    user = FactoryBot.create(:user)
    sign_in user

    post :create, params: { feedback: { message: 'Hello!' } }
    expect(response).to redirect_to townhouses_path

    feedback = Feedback.last
    expect(feedback.message).to eq("Hello!")
    end
  end
end
