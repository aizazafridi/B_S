class RemoveClipSrc < ActiveRecord::Migration[5.1]

    def change
      remove_column :clips, :clip_src
    end
  end
