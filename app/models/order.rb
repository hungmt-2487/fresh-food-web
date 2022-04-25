class Order < ApplicationRecord
  has_many :order_products
  has_many :products, through: :order_products

  enum status: [:to_pay, :to_ship, :to_receive, :completed, :cancelled]
end
