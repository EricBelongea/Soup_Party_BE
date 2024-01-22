class CreateSocialDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :social_dishes do |t|
      t.references :social, null: false, foreign_key: true
      t.references :dish, null: false, foreign_key: true

      t.timestamps
    end
  end
end
