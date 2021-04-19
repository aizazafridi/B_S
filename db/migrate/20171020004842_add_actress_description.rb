class AddActressDescription < ActiveRecord::Migration[5.1]

  def change
    add_column :actresses, :description, :text
  end
end
