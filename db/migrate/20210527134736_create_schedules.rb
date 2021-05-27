class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :cleaning, null: false, foreign_key: true
      t.datetime :dated
      t.boolean :original

      t.timestamps
    end
  end
end
