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
    @player = Player.find(params[:slug])
  end

  def edit
    @player = Player.find(params[:slug])
  end

  def update
    @player = Player.find(params[:slug])
    if @player.update_attributes(player_params)
      redirect_to @player
    else
      render :edit
    end
  end

  private

  def player_params
    params.require(:player)
          .permit(:name, :slug, :team_players)
  end
end
