class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :owner
      t.string :make
      t.string :model
      t.integer :year
      t.string :color
      t.integer :odometer

      t.timestamps null: false
    end
  end
end
