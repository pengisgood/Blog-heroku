class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true

  has_secure_password
end
