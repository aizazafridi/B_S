class AddAttachmentClipSrcToClips < ActiveRecord::Migration[5.1]
  def self.up
    change_table :clips do |t|
      t.attachment :clip_src
    end
  end

  def self.down
    remove_attachment :clips, :clip_src
  end
end
