class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :manufacture
  has_many :order_lines
  has_many :orders, through: :order_lines
end
