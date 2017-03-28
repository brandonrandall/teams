class Team < ApplicationRecord

  validates :name,
            :slug, presence: true

  validates :name,
            :slug, uniqueness: true

  has_many :team_coaches
  has_many :coaches, through: :team_coaches
  has_many :team_players
  has_many :players, through: :team_players

  def current_coach
    coaches.where("team_coaches.current = ?", true).first
    # team_coaches.where(current: true).first.coach
  end

  def previous_coaches
    coaches.where("team_coaches.current =?", false)
  end

  def previous_players
    players.where("team_players.current = ?", false)
    # team_players.where(current: false)
  end

  def current_players
    players.where("team_players.current = ?", true)
    # player.where(current: true)
  end
end
