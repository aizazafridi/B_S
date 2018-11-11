class AddAttachmentImageUrlToClips < ActiveRecord::Migration[5.1]
  def self.up
    change_table :clips do |t|
      t.attachment :image_url
    end
  end

  def self.down
    remove_attachment :clips, :image_url
  end
end
