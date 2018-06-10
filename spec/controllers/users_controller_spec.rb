require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "when POST #create " do

      it "with team_id params, returns http success and user got added to the team with id eq team_id" do
        r_and_d_team = Team.where(name:"R&D").first
        post :create, xhr: true, params: { user: { full_name: "Damien TALBOT", team_id: r_and_d_team.id } }
        expect(response).to have_http_status(:success)
        created_user = User.last
        expect(created_user.full_name).to eq "Damien TALBOT"
        expect(created_user.team_id) == r_and_d_team.id
        expect(r_and_d_team.members.include?(created_user)).to be true
      end

      it "without team_id params, returns http success and user got created without being in a team" do
        post :create, xhr: true, params: { user: { full_name: "John DOE" } }
        expect(response).to have_http_status(:success)
        created_user = User.last
        expect(created_user.full_name).to eq "John DOE"
        expect(created_user.team_id.nil?).to be true
      end

      it "with bad params, returns http unprocessable_entity" do
        post :create, xhr: true, params: { user: { full_name: nil } }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end

end
