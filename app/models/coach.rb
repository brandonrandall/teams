class Coach < ApplicationRecord

  validates :name,
            :slug, presence: true

  validates :name,
            :slug, uniqueness: true

  has_many :player_coaches
  has_many :players, through: :player_coaches
  has_many :team_coaches
  has_many :teams, through: :team_coaches
  has_many :team_players
  has_many :players, through: :team_players


#need to remove name column from players and coaches
#need to add first name and last name columns to players and coaches

  def current_players
    # player_coaches.where(coach_id: self.id, current: true)
    #   .map{ |pc| Player.find(pc.player_id) }
    # self.current_team.players
    player_coaches.where(current: true).map { |pc| pc.player }
  end

  def previous_players
    player_coaches.where(current: false).map { |pc| pc.player }
  end

  def current_team
    team_coaches.where(current: true).first.team.name
  end

end
