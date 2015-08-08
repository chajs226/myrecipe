class MainpageController < ApplicationController
  def search
		@Recipes	= Recipe.all
  end

  def show
  end
end
