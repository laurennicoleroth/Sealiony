class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :address, null: false
      t.integer :click_count, null: false
      t.string :short_url
      t.references :user

      t.timestamps null: false
    end
  end
end
