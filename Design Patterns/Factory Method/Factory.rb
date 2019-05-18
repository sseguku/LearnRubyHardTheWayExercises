require './Lion'
require './Vampire'
require './Monster'
class Factory
    
    def makeEnemy(newEnemy)
        if newEnemy.eql? "L"
            return Lion.new   
        elsif newEnemy.eql?'V'
            return Vampire.new
        elsif newEnemy.eql?'M'
            return Monster.new
        else
            return Enemy.new
        end
    end
end