class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :position_id
      t.integer :user_id

      t.timestamps
    end
  end
end
