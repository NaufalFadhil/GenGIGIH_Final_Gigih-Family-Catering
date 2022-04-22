FactoryBot.define do
  factory :order do
    customer_id { 1 }
    total { 1.5 }
    order_date { "2022-04-22 07:53:40" }
    admin_id { 1 }
  end
end
