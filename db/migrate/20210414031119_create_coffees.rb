class CreateCoffees < ActiveRecord::Migration[6.1]
  def change
    create_table :coffees do |t|
      t.integer :amount, default: 0
      t.float :price, null: false, default: 0
      t.string :origin
      t.string :blend, null: false

      t.timestamps
    end
  end
end
