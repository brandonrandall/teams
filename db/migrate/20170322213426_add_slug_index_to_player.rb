class AddSlugIndexToPlayer < ActiveRecord::Migration[5.0]
  def change
    add_index :players, :slug
  end
end
