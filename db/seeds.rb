# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')
require 'faker'

cake_recipe = Recipe.create!(title: 'Vanilla Chocolate Brussels Sprouts Swirl Cake', description: 'Mix dehydrated brussles sprouts into your favorite Betty Crocker mix.  Add water, eggs, and the whatever else it tells you.  Bake as directed.')
butter_recipe = Recipe.create(title: 'Brussles Sprouts Butter', description: 'Simmer steamed brussels sprouts to a liquid and strain.  Delicately simmer strained brussels sprouts with salted butter.  Add bacon fat to taste if desired.')
watermelon_recipe = Recipe.create(title: 'Grilled Watermelon Brusseles Sprouts Salad with Feta', description: 'Chop seedless watermelon into manageable chunks and lightly grill.  Toss watermelon with fried brussels sprouts, dry sunflower seeds, and feta.')
ice_cream_recipe = Recipe.create(title: 'Homemade Brussels Sprouts Ice Cream!', description: 'Boil brussels sprouts to a lightly chunky broth and mix with salt, raw honey, and heavy cream for a long, long, long time.  Add a touch of beer or a lot of absinthe if desired.')
raw_recipe = Recipe.create(title: 'Organic Raw Vegan Gluten Free Brussles Sprouts', description:  'Plant brussels sprouts, harvest, clean, and consume.  DO NOT COOK.  Chopping or dicing before consumption suggested.')

recipe_attributes = [
  { title: 'Vanilla Chocolate Brussels Sprouts Swirl Cake', description: 'Mix dehydrated brussles sprouts into your favorite Betty Crocker mix.  Add water, eggs, and the whatever else it tells you.  Bake as directed.' },
  { title: 'Brussles Sprouts Butter', description: 'Simmer steamed brussels sprouts to a liquid and strain.  Delicately simmer strained brussels sprouts with salted butter.  Add bacon fat to taste if desired.' },
  { title: 'Grilled Watermelon Brusseles Sprouts Salad with Feta', description: 'Chop seedless watermelon into manageable chunks and lightly grill.  Toss watermelon with fried brussels sprouts, dry sunflower seeds, and feta.' },
  { title: 'Homemade Brussels Sprouts Ice Cream!', description: 'Boil brussels sprouts to a lightly chunky broth and mix with salt, raw honey, and heavy cream for a long, long, long time.  Add a touch of beer or a lot of absinthe if desired.' },
  { title: 'Organic Raw Vegan Gluten Free Brussles Sprouts', description:  'Plant brussels sprouts, harvest, clean, and consume.  DO NOT COOK.  Chopping or dicing before consumption suggested.' }
]

recipe_attributes.each do |attribute|
  recipe = Recipe.create(attributes)
  recipe.save
end

comment_bodies = ["delicious!", "!!!!!!!!!", "eh...", "yeah, but is it gmo?", "i like it with eggs", "add vodka", "my mother loves this",
"what if we deep fry it!", "i'm eating this now", "love it", "my dog loves this!", "but why?", "i recently made $100,000 in 3 hours with VitaMitelIte"]

comment_usernames = ["bobert111", "un1corn9", "notabot010101", "mynameissam", "aahllyssunn"]

Comment.create(body: "#{comment_bodies.sample}", username: "#{comment_usernames.sample}", recipe_id: "#{rand(1..6)}")

20.times do
  Comment.create(
    body: "#{comment_bodies.sample}",
    username: "#{Faker::Internet.username}",
    recipe_id: "#{rand(1..6)}"
  )
end
