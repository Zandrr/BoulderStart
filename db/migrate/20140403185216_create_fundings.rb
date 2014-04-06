class CreateFundings < ActiveRecord::Migration
  def change
    create_table :fundings do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.string :website
      t.string :type

      t.timestamps
    end
  end
end
