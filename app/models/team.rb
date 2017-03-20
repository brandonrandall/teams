class Team < ApplicationRecord

  # before_validation :create_slug
  # validates :slug, presence: true, uniqueness: { case_sensitive: false }
  validates_uniqueness_of :name

  has_many :team_coaches
  has_many :coaches, through: :team_coaches
  has_many :team_players
  has_many :players, through: :team_players

  # def to_param(team_name)
  #   params[:slug].parameterize
  # end
  #
  # def self.find_by_param(input)
  #   find_by_name(input)
  # end
  # #
  # private
  #
  # def create_slug
  #   self.slug = name.parameterize
  # end

end
