class AlterActress < ActiveRecord::Migration[5.1]

  def change

    add_column("actresses", "image_url", :string, :after => "last_name")
    
  end
end
