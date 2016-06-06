class User < ActiveRecord::Base
  
  has_many :expenses

  validates :email, presence: {message: "Please enter an email address"}
  validates :password, presence: {message: "Please enter a password"}
  validates :password_confirmation, presence: {message: "Please confirm your password"}
  validates_uniqueness_of :email, message: "Email address must be unique"
  has_secure_password
end
