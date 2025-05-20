class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.string :rental_options
      t.float :rent_price
      t.text :description
      t.string :features
      t.string :start_date
      t.string :end_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
