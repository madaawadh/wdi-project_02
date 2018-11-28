class ProductsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.create(product_params)
    redirect_to product_path(product)
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :image)
  end
end
