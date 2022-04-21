class Menu < ApplicationRecord
  has_many :item_category
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: true
  validates :description, presence: true
end
