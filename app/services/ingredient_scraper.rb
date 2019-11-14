require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredients_hash = JSON.parse(ingredient_serialized)

ingredients = ingredients_hash['drinks']
ingredients.each do |ingredient|
  puts "#{ingredient['strIngredient1']}"
end

