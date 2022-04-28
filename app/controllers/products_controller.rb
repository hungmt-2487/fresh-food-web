class ProductsController < ApplicationController
  def index         
    @pagy, @products = pagy(Product.all, items: 15)
  end
end
