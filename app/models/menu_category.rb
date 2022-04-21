class MenuCategory < ApplicationRecord
  belongs_to :menu, foreign_key: 'menu_id'
  belongs_to :category, foreign_key: 'category_id'
end
