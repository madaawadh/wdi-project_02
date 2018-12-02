class ItemsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def show
  end

  def new
  end

  def create
    item = Item.create(quantity: params["quantity"], price: params["price"], product_id: params["product_id"], order_id: params["order_id"])
    render json: item
  end
end
