class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :boss_id
      t.string :street_address
      t.string :city
      t.string :state_code
      t.integer :zip_code
      t.timestamps null: false
    end
    add_index :locations, :boss_id
  end
end
