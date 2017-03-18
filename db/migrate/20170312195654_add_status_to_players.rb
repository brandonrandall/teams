class AddStatusToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :status, :string, :default => "active"
  end
end
