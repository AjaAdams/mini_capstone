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

  def create
    @product = Product.create ({
      artist: params["artist"],
      title: params["title"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
      year: params["year"],
    })
    render "show.json.jb"
  end

  def update
    input_value = params["id"]
    @product = Product.find_by(id: input_value)
    @product.artist = params["artist"] || @product.artist
    @product.title = params["title"] || @product.title
    @product.price = params["price"] || @product.price
    @product.genre = params["genre"] || @product.genre
    @product.description = params["description"] || @product.description
    @product.image_url = params["image_url"] || @product.image_url

    @product.save

    render "show.json.jb"
  end

  def destroy
    input_value = params["id"]
    @product = Product.find_by(id: input_value)
    @product.destroy

    render json: { message: "You have successfully deleted the product!" }
  end

  # def single_product_url
  #   input_value = params[:id]
  #   @product = Product.find_by(id: input_value)
  #   render "single_product.json.jb"
  # end
end
