class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, null: false
      t.string :password, null: false
      t.string :phone
      t.integer :role, null: false, default: 0
    end

    add_index :users, :email, unique: true
  end
end
