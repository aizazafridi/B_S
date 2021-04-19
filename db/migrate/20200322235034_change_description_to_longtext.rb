class ChangeDescriptionToLongtext < ActiveRecord::Migration[5.1]
  def change
    change_column :feature_actresses, :description, :text, :limit => 9000
  end
end
