class CreateLocation2s < ActiveRecord::Migration
  def change
    create_table :location2s do |t|
      t.integer :employee_id
      t.string :street_address
      t.string :city
      t.string :state_code
      t.integer :zip_code
      t.timestamps null: false
    end
    add_index :location2s, :employee_id
  end
end
