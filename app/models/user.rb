class User < ApplicationRecord
  user_roles: ["super_admin","admin","buyer"]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:confirmable


  def super_admin?
    roles.include?.("super_admin")
  end
  def admin?
    roles.include?.("admin")
  end
  def buyer?
    roles.include?.("buyer")
  end
end
