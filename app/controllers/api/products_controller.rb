class Api::ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render "products.json.jb"
  end

  def single_product
    @product = Product.find_by(id: 2)
    render "single_product.json.jb"
  end

  def single_product_url
    input_value = params[:id]
    @product = Product.find_by(id: input_value)
    render "single_product.json.jb"
  end
end
