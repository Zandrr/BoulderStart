class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :website, :string
    add_column :users, :description, :text
    add_column :users, :angellist, :string
    add_column :users, :linkedin, :string
    add_column :users, :twitter, :string
    add_column :users, :type, :string
  end
end
