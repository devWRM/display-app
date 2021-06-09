class AddActiveToCleanings < ActiveRecord::Migration[6.0]
  def change
    add_column :cleanings, :active, :boolean, default: true
  end
end
