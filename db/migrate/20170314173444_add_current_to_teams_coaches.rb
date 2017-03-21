class AddCurrentToTeamsCoaches < ActiveRecord::Migration[5.0]
  def change
    add_column :team_coaches, :current, :boolean, :default => true
  end
end
