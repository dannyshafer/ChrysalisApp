class User < ActiveRecord::Base
  has_many :baskets
  has_many :funds
  has_secure_password
  validates_presence_of :password
end
