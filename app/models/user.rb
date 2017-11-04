class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 4 }
  enum sex: { male: 1, female: 2, other: 0 }
  validates :sex, presence: true
  has_secure_password
end
