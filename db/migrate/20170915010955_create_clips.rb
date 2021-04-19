class CreateClips < ActiveRecord::Migration[5.1]
  def change
    create_table :clips do |t|

      t.belongs_to :actress, index: true

      t.text "clip_name"
      t.text "clip_description"
      t.text "clip_image_url"
      t.text "movie"
      t.datetime "release_date"
      t.text "clip_tag1"
      t.text "clip_tag2"
      t.text "clip_tag3"

      t.timestamps
    end
  end
end
