FactoryBot.define do
  facotry :dish do
    dish_name { Faker::FunnyName.name }
    quantity { Faker::Number.between(from:1, to:20) }
    feeds { Faker::Number.between(from:1, to:20) }
    dessert { Faker::Boolean.boolean }
  end
end