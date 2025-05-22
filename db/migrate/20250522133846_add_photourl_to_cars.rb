class AddPhotourlToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :photo_url, :string
  end
end
