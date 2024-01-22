class Social
  validates_presence_of :social_name, :location, :description, :datetime

  has_many :user_socials
  has_many :users, through: :user_socials
  has_many :social_dishes
  has_many :dishes, through: :social_dishes
end