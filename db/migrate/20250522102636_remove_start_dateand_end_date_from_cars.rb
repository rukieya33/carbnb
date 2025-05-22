class RemoveStartDateandEndDateFromCars < ActiveRecord::Migration[7.1]
  def change
    remove_column :cars, :start_date, :string
    remove_column :cars, :end_date, :string
  end
end
