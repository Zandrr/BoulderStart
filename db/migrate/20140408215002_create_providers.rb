class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.string :website
      t.string :provider_type

      t.timestamps
    end
  end
end
