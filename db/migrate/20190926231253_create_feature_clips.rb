class CreateFeatureClips < ActiveRecord::Migration[5.1]
  def change
    create_table :feature_clips do |t|
      t.text :description

      t.timestamps
    end
  end
end
