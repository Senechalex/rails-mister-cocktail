require 'open-uri'
require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "whisky")
Ingredient.create(name: "gin")
Ingredient.create(name: "vodka")
Ingredient.create(name: "rhum")
Ingredient.create(name: "mapple syrup")
Ingredient.create(name: "strawberry syrup")

Cocktail.create(name: "Negroni")
Cocktail.create(name: "Dry Martini")
Cocktail.create(name: "Manhattan")


# url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

# ingredients = File.read(url)

# ingredients = JSON.parse(serialized_ingredients)
