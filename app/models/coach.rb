class Coach < ApplicationRecord

  validates :name,
            :slug, presence: true

  validates :name,
            :slug, uniqueness: true

  has_many :player_coaches
  has_many :players, through: :player_coaches
  has_many :team_coaches
  has_many :teams, through: :team_coaches


#need to remove name column from players and coaches
#need to add first name and last name columns to players and coaches

  def current_players
    
  end

  def previous_players
    player_coaches.where(current: false).map { |pc| pc.player }
  end

end
