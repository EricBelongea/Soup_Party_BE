class UserSocial < ApplicationRecord
  # validate_presence_of :user_id, :social_id

  belongs_to :users
  belongs_to :socials
end