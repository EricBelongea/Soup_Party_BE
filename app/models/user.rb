class User
  validates_presence_of :first_name, :last_name, :email, :password_digest
  validates :email, uniqueness: true
  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}

  has_secure_password

  has_many :user_socials
  has_many :socials, through: :user_socials
end