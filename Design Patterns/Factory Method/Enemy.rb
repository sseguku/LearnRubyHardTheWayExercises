class Enemy
    attr_accessor :name, :amt_damage
     
    # def initialize (name, amt_damage)
    #     @name = name
    #     @amt_damage = amt_damage
    # end 

    def followsHero()
        puts "#{@name} is following the Hero."
    end

    def displayEnemy()
        puts "#{@name} is on the screen."
    end

    def damagesHero()
        puts "#{@name} attacks, and does #{@amt_damage} damage on hero."
    end
end
