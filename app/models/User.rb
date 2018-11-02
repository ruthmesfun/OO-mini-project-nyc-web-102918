class User

    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end

    def recipe_cards
        RecipeCard.all.select{|recipe_card| recipe_card.user == self}
    end

    def recipes

    end

end