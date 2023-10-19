class User < ApplicationRecord
  has_secure_password
  
  before_save :downcase_email 
  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}, presence: true, uniqueness: true 

  private 

  def downcase_email 
    self.email = email.downcase 
  end 
end

# this is done using this tutorial: https://stevepolito.design/blog/rails-authentication-from-scratch
# logic can be found in the tutorial