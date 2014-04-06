class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :fundings, :type, :funding_type
  end
end
