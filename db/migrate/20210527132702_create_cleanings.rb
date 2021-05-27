class CreateCleanings < ActiveRecord::Migration[6.0]
  def change
    create_table :cleanings do |t|
      t.string :action

      t.timestamps
    end
  end
end
