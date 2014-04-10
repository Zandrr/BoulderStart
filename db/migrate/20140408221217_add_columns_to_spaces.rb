class AddColumnsToSpaces < ActiveRecord::Migration
  def change
    add_column :spaces, :name, :string
    add_column :spaces, :description, :text
    add_column :spaces, :photo, :string
    add_column :spaces, :website, :string
    add_column :spaces, :space_type, :string
  end
end
