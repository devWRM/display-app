class AddStatusRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :status, null: false, foreign_key: true
  end
end
