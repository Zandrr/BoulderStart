class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.string :website

      t.timestamps
    end
  end
end
