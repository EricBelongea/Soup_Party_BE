class Dish < ApplicationRecord
  validates_presence_of :dish_name, :quantity, :feeds, :dessert
  validates :quantity, :feeds, numericality: { greater_than: 0 }
  validates :dessert, inclusion: { in: [true, false] }

  has_many :social_dishes
  has_many :socials, through: :social_dishes
end