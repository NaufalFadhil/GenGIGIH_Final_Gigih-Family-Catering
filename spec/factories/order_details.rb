FactoryBot.define do
  factory :order_detail do
    order_id { 1 }
    item_id { 1 }
    quantity { 1 }
  end
end
