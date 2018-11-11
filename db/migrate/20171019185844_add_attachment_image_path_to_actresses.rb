class AddAttachmentImagePathToActresses < ActiveRecord::Migration[5.1]
  def self.up
    change_table :actresses do |t|
      t.attachment :image_path
    end
  end

  def self.down
    remove_attachment :actresses, :image_path
  end
end
