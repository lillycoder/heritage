require 'rails_helper'

RSpec.describe TownhousesController, type: :controller do
  describe "townhouses#index action" do
    it "should successfully show the page" do
      user = FactoryBot.create(:user)
      sign_in user
      
      get :index
      expect(response).to have_http_status(200)
    end
  end
end