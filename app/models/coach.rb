class Coach < ApplicationRecord

  # has_many :player_coaches
  # has_many :players, through: :player_coaches
  has_many :team_coaches
  has_many :teams, through: :team_coaches


#need to remove name column from players and coaches
#need to add first name and last name columns to players and coaches

  def players(team_id)
    self.team(team_id).players
  end

  def self.team(id)
    Team.find(id)
  end

end
