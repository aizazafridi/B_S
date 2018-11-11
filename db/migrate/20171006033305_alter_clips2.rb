class AlterClips2 < ActiveRecord::Migration[5.1]
  def change

    add_column("clips", "clip_src", :string, :null => true, :default => '', :after => "clip_image_url")

  end
end
