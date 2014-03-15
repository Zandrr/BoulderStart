class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :title
      t.text :description
      t.boolean :looking
      t.integer :user_id

      t.timestamps
    end
  end
end
