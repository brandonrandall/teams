class CreateTeamsCoaches < ActiveRecord::Migration[5.0]
  def change
    create_table :teams_coaches do |t|
      t.references :coaches, foreign_key: true
      t.references :teams, foreign_key: true
    end
  end
end
