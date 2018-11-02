class Recipe
    attr_accessor :name
    @@all = []

    def initialize(name)
        @@all << self
        @name = name
    end

    def self.all 
        @@all
    end

    #return all the cards that have this specific recipe (DID NOT ASK FOR THIS METHOD)
    def recipe_cards
        RecipeCard.all.select{|recipe_card| recipe_card.recipe == self}
    end
    
    # Counts all the users who have this recipe in the Recipe Card (DID NOT ASK FOR THIS METHOD)
    def recipe_counter
        recipe_cards.count
    end

    def self.most_popular
        Recipe.all.max{|recipe_1, recipe_2|  recipe_1.recipe_counter <=> recipe_2.recipe_counter}
    end

    def users
        recipe_cards.map{|recipe_card| recipe_card.user }
    end

end