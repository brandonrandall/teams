class PlayersController < ApplicationController

  def index
    @teams = Team.all
    @coaches = Coach.all
    @players = Player.all
  end

  # def new
  #   @player = Player.new
  # end

  def show
    # @player = Player.find(params[:id])
    @player = Player.find_by(slug: params[:slug])
  end

end
