class Recipe < ActiveRecord::Base
	belongs_to	:user
	has_many	:recipe_comments
	has_many	:recipe_details
	has_many	:recipe_pictures
	has_many	:recipe_ingredients

	validates	:kind,	:presence => { :in => ["한식","일식","중식","양식","퓨전"], :message => "한식, 일식, 중식, 양식 중 하나를 선택하셔야 합니다."}
	validates	:title, :presence => { :message => "제목을 반드시 입력하셔야 합니다."}
  validates :time, :presence => { :message => "조리시간을 반드시 입력하셔야 합니다."}
	validates :level, :presence => { :message => "난이도를 반드시 입력하셔야 합니다."}

end
