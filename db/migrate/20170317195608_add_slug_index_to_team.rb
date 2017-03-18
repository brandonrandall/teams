class AddSlugIndexToTeam < ActiveRecord::Migration[5.0]
  def change
    add_index :teams, :slug
  end
end
