class RecipeDetail < ActiveRecord::Base
	belongs_to	:recipe
	has_many	:recipe_detail_pictures

	validates	:content, :presence => { :message => "내용이 입력되지 않았습니다." }
end
