class AddPressToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :press, :boolean
  end
end
