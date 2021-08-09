class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :content
      t.integer :age
      t.string :grow_medium
      t.string :training_method
      t.string :light_type
      t.string :room_type
      t.string :watering
      t.string :strain
      t.timestamps
    end
  end
end
