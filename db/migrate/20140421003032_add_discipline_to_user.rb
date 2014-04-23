class AddDisciplineToUser < ActiveRecord::Migration
  def change
  	add_column :users, :discipline, :string
  end
end
