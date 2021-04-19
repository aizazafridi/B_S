class AddTag4 < ActiveRecord::Migration[5.1]
  def change
    add_column :clips, :clip_tag4, :text
  end
end
