class Product < ApplicationRecord
  belongs_to :category,counter_cache: true
  has_many :variants, dependent: :destroy, inverse_of: :product
  accepts_nested_attributes_for :variants, allow_destroy: true
end

# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  price       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#
