class AddWebsiteToStudentGroups < ActiveRecord::Migration
  def change
    add_column :student_groups, :website, :string
  end
end
