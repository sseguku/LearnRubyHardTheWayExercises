require './Enemy'
require './Factory'

puts "Choose the type of ship by press L, M, V >>"
input = gets.chomp

factory = Factory.new
theEnemy = factory.makeEnemy(input.capitalize)

def doStuff (hater)
    hater.displayEnemy()
    hater.followsHero()
    hater.damagesHero()
end

doStuff(theEnemy)