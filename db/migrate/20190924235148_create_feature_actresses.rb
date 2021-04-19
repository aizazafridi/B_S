class CreateFeatureActresses < ActiveRecord::Migration[5.1]
  def change
    create_table :feature_actresses do |t|
      t.text :description

      t.timestamps
    end
  end
end
