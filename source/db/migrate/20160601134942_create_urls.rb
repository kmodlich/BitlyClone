class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :short_url, null: false, unique: true, index: true
      t.string :long_url, null: false, unique: true, index: true
      t.timestamps
    end
  end
end
