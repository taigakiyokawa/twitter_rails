class User < ApplicationRecord
  has_many :posts, dependent: :destroy

  has_secure_password
  validates :name, presence: true, uniqueness: true, length: {maximum: 20}
end
