class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
    # @team = Team.find(params[:id])
      @team = Team.where(name: params[:slug])
      # binding.pry
      # @team_name = @team.name unless @team.nil?
  end

end
