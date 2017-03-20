class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
    # @team = Team.find(params[:id])
    # binding.pry

    # look into titleize
    # if wanted to allow user to create, you could create a
    # binding.pry
     @team = Team.find_by(slug: params[:slug])
      # @team_name = @team.name unless @team.nil?
  end

end
