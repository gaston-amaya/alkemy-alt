class User < ApplicationRecord
include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  #validations
  validates :email, presence: true

  validates :email, uniqueness: { message: 'an account with that email already exists' }

  validates :email, length: { in: 8..100, message: 'The email length cant be higher than 100 letters' }
end
