class ChangeTypeToFundType < ActiveRecord::Migration
  def change
  	change_column :fundings, :type,  :funding_type
  end
end
