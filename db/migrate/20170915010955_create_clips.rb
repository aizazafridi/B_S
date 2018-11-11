class CreateClips < ActiveRecord::Migration[5.1]
  def change
    create_table :clips do |t|

      t.belongs_to :actress, index: true
      
      t.string "clip_name"
      t.string "clip_description"
      t.string "clip_image_url"
      t.string "movie"
      t.datetime "release_date"
      t.string "clip_tag1"
      t.string "clip_tag2"
      t.string "clip_tag3"

      t.timestamps
    end
  end
end
