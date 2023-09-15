# == Schema Information
#
# Table name: categories
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint
#
class Category < ApplicationRecord
  has_many :categories
  belongs_to :category, optional: true

  def self.parent_categories 
    where(category_id: nil)
  end 
end