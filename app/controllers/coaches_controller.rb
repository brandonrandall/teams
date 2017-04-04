class CoachesController < ApplicationController

  def index
    @coaches  = Coach.all
  end

  def show
    @coach = Coach.find_by(slug: params[:slug])
  end

  def new
    @coach = Coach.new
    @teams = Team.all
  end

  def create
    new_params = add_slug_to_coaches_params(coach_params)
    team_id = new_params.delete(:team_coaches).to_i
    # binding.pry
    @coach = Coach.new(new_params)
    if @coach.save && @coach.team_coaches.new(team_id: team_id).save
      redirect_to coach_path(@coach.slug)
    else
      render :new
    end
  end

  def edit
    @coach = Coach.find(params[:slug])
  end

  def update
    @coach = Coach.find(params[:slug])
    if @coach.update_attributes(coach_params)
      redirect_to coach_path(@coach.slug)
    else
      render :edit
    end
  end

private

  def coach_params
    params.require(:coach)
                    .permit(:name, :slug, :team_coaches)
  end

  def add_slug_to_coaches_params(coaches_params)
    coaches_params[:slug] = coaches_params[:name].downcase.gsub(" ", "-")
    coaches_params
  end

end
