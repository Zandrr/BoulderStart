class AddPhotoToStudentGroups < ActiveRecord::Migration
  def change
    add_column :student_groups, :photo, :string
  end
end
