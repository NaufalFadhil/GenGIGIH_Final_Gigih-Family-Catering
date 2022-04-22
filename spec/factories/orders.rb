FactoryBot.define do
  factory :order do
    customer_id { "MyString" }
    total { 1 }
    order_date { "2022-04-22 03:50:09" }
    created_by { "MyString" }
  end
end
