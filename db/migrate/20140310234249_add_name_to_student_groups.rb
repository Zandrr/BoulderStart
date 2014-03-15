class AddNameToStudentGroups < ActiveRecord::Migration
  def change
    add_column :student_groups, :name, :string
  end
end
