class AddActiveToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :active, :boolean, default: true
  end
end
