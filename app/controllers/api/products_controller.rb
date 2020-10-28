class Api::ProductsController < ApplicationController
  def display_products_action
    @products = Product.all
    render "products.json.jb"
  end
end
