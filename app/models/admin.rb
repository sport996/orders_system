class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include Devise::JWT::RevocationStrategies::JTIMatcher    
  :jwt_authenticatable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  
end
