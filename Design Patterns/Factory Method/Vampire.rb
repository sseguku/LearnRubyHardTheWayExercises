require './Enemy'

class Vampire < Enemy

    def initialize        
        #initializes methods from the super class
        @name = "Vampire"
        @amt_damage = 100
    end
end
