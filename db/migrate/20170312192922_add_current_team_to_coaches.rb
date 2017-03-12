class AddCurrentTeamToCoaches < ActiveRecord::Migration[5.0]
  def change
    add_column :coaches, :current_team, :string
  end
end
