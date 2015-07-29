class Fund < ActiveRecord::Base
  has_many :funds_baskets
  belongs_to :users
end
