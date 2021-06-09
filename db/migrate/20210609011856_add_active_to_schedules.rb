class AddActiveToSchedules < ActiveRecord::Migration[6.0]
  def change
    add_column :schedules, :active, :boolean, default: true
  end
end
