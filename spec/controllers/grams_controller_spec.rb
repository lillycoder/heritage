require 'rails_helper'

RSpec.describe GramsController, type: :controller do
  describe "gramsindex action" do
    it "should successfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "grams#new action" do 
    it "should successfully show the new form" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "grams#create action" do
    it "should successfully show the new form" do
      post :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "grams#create action" do
    it "should successfull display new announcements" do
      expect(response).to have_http_status(:success)
    end
  end

end
