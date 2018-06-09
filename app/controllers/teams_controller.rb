class TeamsController < ApplicationController

  def index
    @teams = Team.all
    render json: @teams
    # render json: @teams,
    #   include: {
    #     :manager => {:only => :full_name},
    #     :members => {:only => :full_name}
    #   },
    #   except: [:id, :manager_id, :created_at, :updated_at]
  end
end
