# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories	= ["한식","일식","중식","양식","퓨전"]

categories.each do |category|
  0.upto(1) do |i|
    p = Recipe.new
    p.user_id = i + 1
    p.kind = category
    p.title = "#{category}#{i} 음식 "
		p.time = "0300"
		p.level = "3"
		p.vote = i + 3
    p.save
  end
end
