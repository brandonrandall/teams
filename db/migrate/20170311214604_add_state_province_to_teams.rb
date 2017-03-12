class AddStateProvinceToTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :state_or_province, :string
  end
end
