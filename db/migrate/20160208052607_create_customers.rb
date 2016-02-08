class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :shipping_address
      t.string :shipping_phone
      t.string :shipping_name
      t.integer :user_id
    end
  end
end
