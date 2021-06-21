class CreateCleanings < ActiveRecord::Migration[6.0]
  def change
    create_table :cleanings do |t|
      t.string :duty
      t.boolean :pass
      t.boolean :isActive, default: true

      t.timestamps
    end
  end
end
