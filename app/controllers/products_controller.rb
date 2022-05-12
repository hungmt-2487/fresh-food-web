class ProductsController < ApplicationController
  before_action :authenticate_user!
  
  def index         
    @pagy, @products = pagy(Product.all, items: 15)
  end
end
