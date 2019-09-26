class AddFeatureClipForeignKey < ActiveRecord::Migration[5.1]
  def change
      add_reference :feature_clips, :clip, foreign_key: true
  end
end
