class User < ActiveRecord::Base
  has_one :customer
  has_many :invoices
end
