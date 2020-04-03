class UpdateDescription2 < ActiveRecord::Migration[5.1]
  def change
    change_column :feature_actresses, :description, :string, :limit => 9000
  end
end
