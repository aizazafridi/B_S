class AddMatureColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :clips, :mature, :boolean, default: false
  end
end
