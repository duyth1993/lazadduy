class Invoice < ActiveRecord::Base
  has_one :order
end
