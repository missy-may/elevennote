class User < ActiveRecord::Base
  has_secure_password
  has_many :notes
  validates :username, presence: true, uniqueness: true
  validates :password, length: {minimum: 8}
end
