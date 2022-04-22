class OrderDetail < ApplicationRecord
   belongs_to :order, foreign_key: 'order_id'
   belongs_to :menu, foreign_key: 'menu_id'
end
