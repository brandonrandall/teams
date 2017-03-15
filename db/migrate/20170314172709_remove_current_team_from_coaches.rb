class RemoveCurrentTeamFromCoaches < ActiveRecord::Migration[5.0]
  def change
    remove_column :coaches, :current_team
  end
end
