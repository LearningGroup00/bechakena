class User < ApplicationRecord
  USERS_ROLES = ["super_admin","admin","buyer"]
  # validates :roles, inclusion: { in: USERS_ROLES }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:confirmable


  def super_admin?
    roles.include?("super_admin")
  end
  def admin?
    roles.include?("admin")
  end
  def buyer?
    roles.include?("buyer")
  end
end
