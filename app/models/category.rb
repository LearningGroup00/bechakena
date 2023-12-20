class Category < ApplicationRecord
  belongs_to :category, optional: true
  has_many :categories 
  has_many :products, dependent: :destroy 

  scope :main_categories, -> {where(category_id: nil)}
end

# == Schema Information
#
# Table name: categories
#
#  id             :bigint           not null, primary key
#  details        :text
#  name           :string           not null
#  products_count :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  category_id    :bigint
#
