class CreateSocials < ActiveRecord::Migration[7.0]
  def change
    create_table :socials do |t|
      t.string :location
      t.string :social_name
      t.string :description
      t.string :datetime

      t.timestamps
    end
  end
end
