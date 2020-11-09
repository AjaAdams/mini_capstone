class Api::SuppliersController < ApplicationController
  def index
    @supplier = Supplier.all
    render "index.json.jb"
  end

  def show
    input_value = params["id"]
    @supplier = Supplier.find_by(id: input_value)
    render "show.json.jb"
  end

  def create
    @supplier = Supplier.new (
      name: params["name"],
      email: params["email"],
      phone_number: params["phone_number"]
    )
    @supplier.save
    render "show.json.jb"
  end

  def update
    input_value = params["id"]
    @supplier = Product.find_by(id: input_value)
    @supplier.name = params["name"] || @supplier.name
    @supplier.email = params["email"] || @supplier.email
    @supplier.phone_number = params["phone_number"] || @supplier.phone_number

    if @supplier.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    input_value = params["id"]
    @supplier = Supplier.find_by(id: input_value)
    @product.destroy

    render json: {message: "You have successfully deleted the supplier!"}
  end
end
