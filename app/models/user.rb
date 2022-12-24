class User < ApplicationRecord
 include Devise::JWT::RevocationStrategies::JTIMatcher
 devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable,
        :jwt_authenticatable, jwt_revocation_strategy: self
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
       
 belongs_to :shop
 has_many :shop
 has_many :orders
end
