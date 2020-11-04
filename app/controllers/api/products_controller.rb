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
    @product = Product.new ({
      artist: params["artist"],
      title: params["title"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
      year: params["year"],
    })

    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
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

    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    input_value = params["id"]
    @product = Product.find_by(id: input_value)
    @product.destroy

    render json: { message: "You have successfully deleted the product!" }
  end
end
