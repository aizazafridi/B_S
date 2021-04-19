class AddDownloadLinkColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :clips, :download_link, :text
  end
end
