class AddReference < ActiveRecord::Migration[5.1]
  def change
      add_reference :feature_actresses, :actress, foreign_key: true
  end
end
