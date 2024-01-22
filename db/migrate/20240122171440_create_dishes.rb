class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :dish_name
      t.integer :quantity
      t.integer :feeds
      t.boolean :dessert

      t.timestamps
    end
  end
end
