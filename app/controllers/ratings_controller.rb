class RatingsController < ApplicationController

  def create
    @recipe = Recipe.find(params[:id])
    @recipe.ratings.create(params[:rating])
    redirect_to("/recipes")
  end

end
