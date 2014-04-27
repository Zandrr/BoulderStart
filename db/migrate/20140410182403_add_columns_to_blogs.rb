class AddColumnsToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :content, :text
    add_column :blogs, :user_id, :integer
  end
  
end
