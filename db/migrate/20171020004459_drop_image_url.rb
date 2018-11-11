class DropImageUrl < ActiveRecord::Migration[5.1]
  
  def change
    remove_column :actresses, :image_url
  end
end
