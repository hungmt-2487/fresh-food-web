class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, null:false, index:true
      t.string :unit, null:false
      t.decimal :price, precision: 12, scale: 2, null:false
      t.integer :quantity_stock, null:false
      t.text :description

      t.timestamps

      t.references :category, null: false
    end
  end
end
