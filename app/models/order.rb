class Order < ActiveRecord::Base
  belongs_to :invoice
  belongs_to :customer
  has_many :order_lines, dependent: :destroy
  has_many :products, through: :order_lines
end
