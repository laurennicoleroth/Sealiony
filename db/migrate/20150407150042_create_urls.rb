class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :address, null: false
      t.integer :click_count, default: 0, null: false
      t.string :short_url, index: true
      t.references :user

      t.timestamps null: false
    end
  end
end
