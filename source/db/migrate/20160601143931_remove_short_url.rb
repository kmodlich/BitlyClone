class RemoveShortUrl < ActiveRecord::Migration
  def change
  	remove_column :urls, :short_url
  	add_column :urls, :key, :string,index: true
  end
end
