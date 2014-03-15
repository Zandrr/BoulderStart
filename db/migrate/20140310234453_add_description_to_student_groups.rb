class AddDescriptionToStudentGroups < ActiveRecord::Migration
  def change
    add_column :student_groups, :description, :string
  end
end
