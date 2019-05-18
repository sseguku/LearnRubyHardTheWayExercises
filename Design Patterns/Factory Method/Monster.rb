require './Enemy'
class Monster < Enemy

    def initialize        
        #initializes methods from the super class
       @name = "Monster"
       @amt_damage = 5.5 
    end   
end
 