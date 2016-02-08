class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :invoice_number, null: false
      t.integer :user_id
      t.integer :order_id
    end

    add_index :invoices, :invoice_number, unique: true
  end
end
