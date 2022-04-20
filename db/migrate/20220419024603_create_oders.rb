class CreateOders < ActiveRecord::Migration[5.1]
  def change
    create_table :oders do |t|
      t.string :customer_name, null:false
      t.string :customer_phone, null:false
      t.string :customer_address, null:false
      t.datetime :shipped_date
      t.integer :status, null:false, index:true
      t.text :notes
      t.decimal :total_money, precision: 12, scale: 2, null:false

      t.timestamps
    end
  end
end
