class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all
    sort_order = params[:sort_order]

    if params[:search]
      @products = @products.where("artist LIKE ?", "%#{search}%")
    end

    if params[:sort] == "price"
      @products = @products.order(price: :desc)
    else
      @products = @products.order(price: :asc)
    end

    if params[:sort] == "price" && params[:sort_order] == "desc"
      @products = @products.order(price: :desc)
    end

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
      description: params["description"],
      year: params["year"],
      supplier_id: params[:supplier_id],
    })
    if @product.save
      Image.create!(product_id: @product.id, url: params[:images])
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

    if @product.save
      Image.create!(product_id: @product.id, url: params[:images])
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
