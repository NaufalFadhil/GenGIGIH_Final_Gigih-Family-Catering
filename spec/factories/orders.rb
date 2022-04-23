FactoryBot.define do
  factory :order do
    customer_id { 1 }
    total { 1 }
    status { "MyString" }
    order_date { "2022-04-22 15:05:18" }
    admin_id { 1 }
  end
end
