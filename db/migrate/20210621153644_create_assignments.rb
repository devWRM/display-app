class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.references :type, null: false, foreign_key: true
      t.references :cleaning, null: false, foreign_key: true
      t.boolean :isActive

      t.timestamps
    end
  end
end
