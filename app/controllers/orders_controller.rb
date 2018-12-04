class OrdersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @orders = current_user.orders.order("created_at asc")
  end

  def show
    @order = Order.find_by(id: params[:id])
  end

  def new
  end

  def create
    order = Order.create(total_price: params["price"], user_id: current_user.id)
    render json: order
  end

  def edit
  end

  def update
    @order = Order.find_by(id: params[:id])
    @order.update(total_price: params["price"], completed: params["content"])
  end
end
