# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

i1 = Ingredient.create!(name: "Lemon")
i2 = Ingredient.create(name: "Ice")
i3 = Ingredient.create(name: "Mint Leaves")


c1 = Cocktail.create!(name: "Drink 1", desc:"Little Desc 1", img_url: "https://www.thespruceeats.com/thmb/dZftD42S7eR9FIv-tcZ_P52BZdc=/1319x989/smart/filters:no_upscale()/paloma-cocktail-recipe-760852-5147_preview-5b0ec0bd8e1b6e003e9c35b7.jpeg")
c2 = Cocktail.create!(name: "Drink 2", desc:"Little Desc 2", img_url: "https://images.absolutdrinks.com/drink-images/Raw/Absolut/3c26ac62-9c7f-45d5-85ed-c045c520c5d5.jpg?imwidth=500")
c3 = Cocktail.create!(name: "Drink 3", desc:"Little Desc 3", img_url: "https://www.thespruceeats.com/thmb/gaok6I-ac9gzSM2JB7RUqd4V18A=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/popular-screwdriver-variations-759820-12-5b3f944ec9e77c003785d643.jpg")

d1 = Dose.create!(description: "No idea 1", ingredient: i1, cocktail: c1)
d2 = Dose.create!(description: "No idea 2", ingredient: i2, cocktail: c2)
d3 = Dose.create!(description: "No idea 3", ingredient: i3, cocktail: c3)