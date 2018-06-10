require 'rails_helper'

RSpec.describe TeamsController, type: :controller do

  describe "when GET #index" do
    it 'returns http succes' do
      get :index, xhr: true
      expect(response).to have_http_status(:success)
    end

    it 'returns all the teams' do
      get :index, xhr: true
      parsed_response = JSON.parse(response.body)
      expect(parsed_response['teams'].length).to eq(3)
      expect(parsed_response['teams'][0]['name']).to eq("Sales")
      expect(parsed_response['teams'][1]['name']).to eq("Product")
      expect(parsed_response['teams'][2]['name']).to eq("R&D")
    end
  end

end
