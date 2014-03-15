class CreateTwitterclients < ActiveRecord::Migration
  def change
    create_table :twitterclients do |t|

      t.timestamps
    end
  end
end
