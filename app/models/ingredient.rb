class Ingredient < ActiveRecord::Base
	has_many	:recipe_ingredients
	validates	:recipe_name,	:presence => { :message => "재료명은 반드시 입력하셔야 합니다."}
end
