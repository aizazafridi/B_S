class AddBrokenLink < ActiveRecord::Migration[5.1]
  def change
    add_column :clips, :link_broken, :boolean, :default => false
  end
end
