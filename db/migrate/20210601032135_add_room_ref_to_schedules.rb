class AddRoomRefToSchedules < ActiveRecord::Migration[6.0]
  def change
    add_reference :schedules, :room, null: false, foreign_key: true
  end
end
