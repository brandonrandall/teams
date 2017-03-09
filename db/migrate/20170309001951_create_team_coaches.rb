class CreateTeamCoaches < ActiveRecord::Migration[5.0]
  def change
    create_table :team_coaches do |t|
      t.references :coach, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
