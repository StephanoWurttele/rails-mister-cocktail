# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

i1 = Ingredient.create!(name: "lemon")
i2 = Ingredient.create(name: "ice")
i3 = Ingredient.create(name: "mint leaves")


c1 = Cocktail.create(name: "drink1")
c2 = Cocktail.create(name: "drink2")
c3 = Cocktail.create(name: "drink3")

d1 = Dose.create!(description: "No idea 1", ingredient: i1, cocktail: c1)
d2 = Dose.create!(description: "No idea 2", ingredient: i2, cocktail: c2)
d3 = Dose.create!(description: "No idea 3", ingredient: i3, cocktail: c3)