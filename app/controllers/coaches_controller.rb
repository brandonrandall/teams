class CoachesController < ApplicationController

  def index
    @coaches  = Coach.all
  end

  def show
    @coach = Coach.find_by(slug: params[:slug])
  end

end
