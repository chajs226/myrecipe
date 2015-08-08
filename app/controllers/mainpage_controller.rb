class MainpageController < ApplicationController
  def search
		@Recipes	= Recipe.all
  end

  def show
		@recipe = Recipe.find(params[:id])
		@recipe_details = Recipe.find(params[:id]).recipe_details
  end
end
