class CreatePlayersCoaches < ActiveRecord::Migration[5.0]
  def change
    create_table :players_coaches do |t|
      t.references :players, foreign_key: true
      t.references :coaches, foreign_key: true
    end
  end
end
