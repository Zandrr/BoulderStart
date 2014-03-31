class AddOrgTypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :orgtype, :string
  end
end
