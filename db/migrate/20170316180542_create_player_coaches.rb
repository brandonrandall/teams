class CreatePlayerCoaches < ActiveRecord::Migration[5.0]
  def change
    create_table :player_coaches do |t|
      t.references :player, foreign_key: true
      t.references :coach, foreign_key: true
    end
  end
end
