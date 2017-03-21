class AddCurrentToPlayerCoach < ActiveRecord::Migration[5.0]
  def change
    add_column :player_coaches, :current, :boolean, default: true
  end
end
