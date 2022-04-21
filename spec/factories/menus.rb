FactoryBot.define do
  factory :menu do
    name { Faker::Food.dish }
    price { Faker::Number.positive }
    description { Faker::Food.description }
  end
end
