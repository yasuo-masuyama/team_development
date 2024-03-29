class User < ApplicationRecord
  has_many :blogs

  validates :name, presence: true, length: {maximum: 255}
  validates :email, presence: true, length: {maximum: 255},
                              format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, presence: true, length: {minimum: 4}
  before_validation { email.downcase! }
  has_secure_password
end
