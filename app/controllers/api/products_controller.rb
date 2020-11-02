class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def show
    input_value = params["id"]
    @product = Product.find_by(id: input_value)
    render "show.json.jb"
  end

  # def single_product_url
  #   input_value = params[:id]
  #   @product = Product.find_by(id: input_value)
  #   render "single_product.json.jb"
  # end
end
