class AddSlugToCoaches < ActiveRecord::Migration[5.0]
  def change
    add_column :coaches, :slug, :string
  end
end
