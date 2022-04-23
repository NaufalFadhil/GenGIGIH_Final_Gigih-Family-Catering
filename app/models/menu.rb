class Menu < ApplicationRecord
  has_many :menu_categories
  has_many :categories, through: :menu_categories
  has_many :order_detail
  
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: true
  validates :description, presence: true, length: {maximum: 150}
  validates_numericality_of :price, :greater_than_or_equal_to => 0.01
end
