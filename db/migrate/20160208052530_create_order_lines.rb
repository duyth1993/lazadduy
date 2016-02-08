class CreateOrderLines < ActiveRecord::Migration
  def change
    create_table :order_lines do |t|
      t.integer :quantity
      t.float :display_price
      t.integer :discount
      t.integer :discount_type
      t.integer :product_id
      t.integer :order_id
    end
  end
end
