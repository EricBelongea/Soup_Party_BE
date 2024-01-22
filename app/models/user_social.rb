class UserSocial < ApplicationRecord
  validate_presence_of :user_id, :social_id

  has_many :users
  has_many :socials
end