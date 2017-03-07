class Coach < ApplicationRecord

  has_many :players
  has_many :teams
  has_many :players, through: :players_coaches
  has_many :teams, through: :teams_coaches

end
