require 'rails_helper'

RSpec.describe GramsController, type: :controller do

  describe "grams#new action" do 
    it "should successfully show the new form" do
      user = FactoryBot.create(:user)
      sign_in user

      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "gram#create action" do
  it "should successfully create a new gram in our database" do
    user = FactoryBot.create(:user)
    sign_in user

    post :create, params: { gram: { announcement: 'Hello!' } }
    expect(response).to redirect_to root_path

    gram = Gram.last
    expect(gram.announcement).to eq("Hello!")
    end
  end

end
