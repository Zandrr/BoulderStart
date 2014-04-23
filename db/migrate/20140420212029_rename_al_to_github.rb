class RenameAlToGithub < ActiveRecord::Migration
  def change
    rename_column :users, :angellist, :github
  end
end
