class User < ApplicationRecord
  has_many :comments
  
  validates :name, uniqueness: true
  has_secure_password
end
