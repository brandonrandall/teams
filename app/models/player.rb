class Player < ApplicationRecord

  validates :name,
            :slug, presence: true

  validates :name,
            :slug, uniqueness: true

  has_many :player_coaches
  has_many :coaches, through: :player_coaches
  has_many :team_players
  has_many :teams, through: :team_players

  #
  def current_coach
    team_players.where(current: true).first.team.current_coach
    # coaches.where("player_coaches.current = ?", true).first
    # team_coaches.where(current: true).first.coach
  end

  def previous_coaches
    # Coach.joins(:player_coaches).where(current: false).where(player_id: self.id)
    # for slug
    player_coaches.where(current: false).map { |pc| pc.coach }
    # for finding coach.id
    # player_coaches.where(current: false).joins(:coach).select('coaches.*').coaches
    # player_coaches.where(current: false).joins('join coaches on player_coaches.coach_id = coaches.id').select('coaches.*')
  end

  def current_team
    team_players.find_by(current: true).team.name
  end

  def previous_teams
    team_players.where(current: false).map { |tp| tp.team.name }.first
  end

  # create method that derives all coaches
  # .distinct eliminates all duplicate objects
  # create an inquiry of most recent based on the created_at

  # use rails db to launch a sql console
end
