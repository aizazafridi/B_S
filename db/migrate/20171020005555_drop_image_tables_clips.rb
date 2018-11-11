class DropImageTablesClips < ActiveRecord::Migration[5.1]

  def change
    remove_column :clips, :clip_image_url
  end
end
