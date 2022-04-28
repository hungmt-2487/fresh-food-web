class CreateOrderProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :order_products do |t|
      t.decimal :price, precision: 10, scale: 2, null:false
      t.integer :quantity, null:false
      t.decimal :into_money, precision: 10, scale: 2, null:false

      t.references :order, null: false
      t.references :product, null: false
    end
  end
end
