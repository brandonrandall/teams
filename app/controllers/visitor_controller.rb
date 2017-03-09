class VisitorController < ApplicationController

  def index
    @teams = Team.all
  end

end
