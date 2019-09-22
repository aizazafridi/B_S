class CreateFeatureActresses < ActiveRecord::Migration[5.1]
  def change
    create_table :feature_actresses do |t|
        
      t.belongs_to :actress, index: true
       
      t.string :description

      t.timestamps
    end
  end
end
