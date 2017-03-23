class AddSlugIndexToCoach < ActiveRecord::Migration[5.0]
  def change
    add_index :coaches, :slug
  end
end
