FactoryBot.define do
  factory :social do
    location { Faker::Address.full_address }
    social_name { Faker::FunnyName.name }
    description { Faker::Quote.famous_last_words }
    datetime { Faker::Date.between(from: '2020-01-01', to: '2020-12-31') }
  end
end