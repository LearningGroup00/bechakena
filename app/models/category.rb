class Category < ApplicationRecord
    has_many :products

   # has_many :categories, :through => :category
   # belongs_to :category

    has_many(:categories, :parent_id => :category_id, :dependent => :destroy)

end

