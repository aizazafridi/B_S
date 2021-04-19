class AddTag5 < ActiveRecord::Migration[5.1]
  def change
    add_column :clips, :clip_tag5, :text
  end
end
