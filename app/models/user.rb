class User < ApplicationRecord
  USER_ROLES = ['super_admin', 'admin', 'shop-admin', 'buyer', 'guest'] 
  # Include default devise modules. Others available are:
  
  #:lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:confirmable
  validates :roles, inclusion: { in: USER_ROLES }

  before_save do |user|
    user.email = email.downcase
    user.name = name&.downcase 
    user.username = username&.downcase 
  end

  def super_admin?
    roles.include?("super_admin")
  end
end

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  name                   :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  roles                  :string           default(["\"guest\""]), is an Array
#  unconfirmed_email      :string
#  username               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
