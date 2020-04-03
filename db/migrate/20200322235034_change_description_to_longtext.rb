class ChangeDescriptionToLongtext < ActiveRecord::Migration[5.1]
  def change
    change_column :feature_actresses, :description, :LONGTEXT
  end
end
