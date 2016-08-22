class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :profile_picture
      t.string :highschool_name
      t.string :driver_license
      t.string :highschool_grade
      t.text :bio

      t.timestamps null: false
    end
  end
end
