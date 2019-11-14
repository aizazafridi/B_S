class UpdateClipSrc < ActiveRecord::Migration[5.1]
  def change
    remove_attachment :clips, :clip_src
  end
end
