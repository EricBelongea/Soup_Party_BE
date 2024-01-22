FactoryBot.define do
  facotry :user do
    first_name { Faker::FunnyName.name }
    last_name { Faker::FunnyName.name }
    email { Faker::Internet.unique.email }
    password { Faker::Alphanumeric.alpha(number: 15) }
  end
end