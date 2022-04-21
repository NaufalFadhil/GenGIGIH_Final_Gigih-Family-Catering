class Menu < ApplicationRecord
  has_many :item_category
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
end