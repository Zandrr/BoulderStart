class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.string :website

      t.timestamps
    end
  end
end
