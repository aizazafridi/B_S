class AddUrlToBlobs < ActiveRecord::Migration[6.1]
  def change
    add_column :active_storage_blobs, :storage_url, :text
  end
end
