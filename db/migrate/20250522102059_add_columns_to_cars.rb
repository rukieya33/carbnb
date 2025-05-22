class AddColumnsToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :transmission, :string
    add_column :cars, :fuel, :string
    add_column :cars, :seat_capacity, :integer
    add_column :cars, :model_year, :integer
  end
end
