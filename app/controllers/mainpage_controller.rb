class MainpageController < ApplicationController
  def search
		@recipes	= Recipe.all
  end

  def show
		@recipe = Recipe.find(params[:id])
		@recipe_details = Recipe.find(params[:id]).recipe_details
  end

	def myrecipes
		@myrecipes = Recipe.all
	end

	def write
	end

	def write_complete
		recipe = Recipe.new
		recipe.kind = params[:recipe_kind]
		recipe.title = params[:recipe_title]
		recipe.time = params[:recipe_time]
		recipe.level = params[:recipe_level]
		recipe.user_id = 1

		if recipe.save
			flash[:alert] = "저장되었습니다."
			redirect_to "/mainpage/show/#{recipe.id}"
		else
			flash[:alert] = recipe.errors.values.flatten.join(' ')
			redirect_to :back
		end
	end
end
