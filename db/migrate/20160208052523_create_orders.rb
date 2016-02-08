class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.float :total
      t.string :description
      t.integer :status
      t.integer :shipping_type
      t.integer :customer_id
    end
  end
end
