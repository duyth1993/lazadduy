class CreateManufactures < ActiveRecord::Migration
  def change
    create_table :manufactures do |t|
      t.string :name, null: false
      t.string :description
    end
  end
end
