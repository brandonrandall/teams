class AddCurrentToTeamPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :team_players, :current, :boolean, default: true
  end
end
