class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :sku, null: false
      t.string :name, null: false
      t.string :description
      t.string :product_attributes
      t.string :specification
      t.float :price, null: false
      t.integer :discount
      t.integer :discount_type
      t.string :image
      t.integer :category_id
      t.integer :manufacture_id
    end

    add_index :products, :sku, unique: true
  end
end
