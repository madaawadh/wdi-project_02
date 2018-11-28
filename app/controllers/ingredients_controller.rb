class IngredientsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def show
  end

  def create
    ingredient = Ingredient.create(name: params["name"], quantity: params["quan"], recipe_id: params["id"])
    render json: ingredient
  end
end
