class Api::OrdersController < ApplicationController
  def create
    order = Order.new({
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
    })
    order.save

    render json: { message: "Order was successfully placed!" }
  end
end
