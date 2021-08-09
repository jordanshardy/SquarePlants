class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :name
      t.integer :age
      t.boolean :available
      t.integer :quantity
      t.float :price
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
