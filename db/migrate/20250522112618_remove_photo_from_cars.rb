class RemovePhotoFromCars < ActiveRecord::Migration[7.1]
  def change
    remove_column :cars, :photo, :string
  end
end
