class Order < ApplicationRecord
  has_many :order_detail
  belongs_to :customer, foreign_key: 'customer_id'
  belongs_to :admin, foreign_key: 'admin_id'

  def self.get_customer_orders
    where("name LIKE ?", "#{letter}%").order(:name)
  end
end
