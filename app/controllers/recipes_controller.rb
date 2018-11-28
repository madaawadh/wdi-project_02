class RecipesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
  end

  def new
  end

  def create
    recipe = Recipe.create(title: params["title"], steps: params["steps"], image: params["image"], user_id: current_user.id, tag_ids: params[:a])
    render json: recipe
  end
end
