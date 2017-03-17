class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    #   @team = Team.find(slug: params[:slug])
    #   @team_name = @team.name unless @team.nil?
  end

end
