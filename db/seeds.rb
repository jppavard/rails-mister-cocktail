require 'open-uri'
require 'json'

puts 'Cleaning database...'
Ingredient.destroy_all
Cocktail.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
file = open(url).read
ingredients = JSON.parse(file)

# file = File.read("db/list.json")
# ingredients = JSON.parse(file)

puts "creating seeds...."

ingredients["drinks"].each do |drinks|
  drinks.each do |key, value|
    Ingredient.create!(name: value)
  end
end

# list.each { |e, v|
#   v.each { |e|  Ingredient.create(name: e['strIngredient1']) }
# }

puts "ingredients created!"
