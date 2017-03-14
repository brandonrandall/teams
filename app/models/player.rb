class Player < ApplicationRecord


  has_many :team_players
  has_many :teams, through: :team_players
  #
  # def team
  #   team_id = self.team_players.find_by(player_id: self.id, active: true).team_id
    # Team.find(team_id)

    # get the team through player_teams for this player that have active = true
  # end

  # def self.current_team
  #   # @teams.find_by(team_id:) if
  #   team_players.first.current = true
  # end
  #
  # def past_teams
  #   # get teams through player_teams for this player that have active = false
  # end

end
