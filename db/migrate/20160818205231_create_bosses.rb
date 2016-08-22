class CreateBosses < ActiveRecord::Migration
  def change
    create_table :bosses do |t|
      t.string :first_name
      t.string :last_name
      t.string :profile_picture

      t.timestamps null: false
    end
  end
end
