class CreateTeamsPlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :teams_players do |t|
      t.references :players, foreign_key: true
      t.references :teams, foreign_key: true
    end
  end
end
