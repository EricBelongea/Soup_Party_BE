class SocialDish < ApplicationRecord
  validate_presence_of :social_id, :dish_id

  has_many :socials
  has_many :dishes
end