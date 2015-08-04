class RecipeComment < ActiveRecord::Base
	belongs_to	:recipe
	belongs_to	:user
	validates	:comment, :presence => { :message => "코멘트 내용을 입력하세요."}
end
