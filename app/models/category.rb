class Category < ApplicationRecord
  belongs_to :category, optional: true
  has_many :categories
  has_many :products

  scope :main_categories, -> {where(category_id: nil)}
end
