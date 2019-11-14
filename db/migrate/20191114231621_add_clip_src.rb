class AddClipSrc < ActiveRecord::Migration[5.1]
  def change
      add_column :clips, :clip_src, :string
  end
end
