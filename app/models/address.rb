class Address < ApplicationRecord
 
  belongs_to :user, inverse_of: :address

  self.inheritance_column = 'inheritance_type_column' # Change to your desired column name
 

end
