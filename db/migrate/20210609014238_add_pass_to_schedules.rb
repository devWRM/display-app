class AddPassToSchedules < ActiveRecord::Migration[6.0]
  def change
    add_column :schedules, :pass, :boolean
  end
end
