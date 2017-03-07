class Player < ApplicationRecord

  has_many :teams, through: :players_teams
  has_many :coaches, through: :players_coaches

end
