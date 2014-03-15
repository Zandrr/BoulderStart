class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :website
      t.text :description
      t.string :angellist
      t.string :linkedin
      t.string :twitter
      t.string :type

      t.timestamps
    end
  end
end
