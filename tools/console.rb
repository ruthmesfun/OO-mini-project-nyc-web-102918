require_relative '../config/environment.rb'

demian = User.new
heather = User.new
ruth = User.new

texas_bbq = Recipe.new("BBQ")
eggplant_parm = Recipe.new("Parm")
pizza = Recipe.new("Pizza")

recipe_card_1  = RecipeCard.new(Time.now, 5, demian, texas_bbq)
recipe_card_2 = RecipeCard.new(Time.now, 3, heather, pizza)
recipe_card_3 = RecipeCard.new(Time.now, 5, heather, eggplant_parm)
recipe_card_4  = RecipeCard.new(Time.now, 3, demian, pizza)
recipe_card_5 = RecipeCard.new(Time.now, 5, ruth, pizza)

pizza.recipe_cards
pizza.users

binding.pry 

'1'