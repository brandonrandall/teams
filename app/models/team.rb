class Team < ApplicationRecord

  has_many :players, through: :players_teams
  has_many :coaches, through: :teams_coaches

end
