class Parent 
    def altered()
        puts "PARENT altered()"
    end
end

class Child < Parent
    def altered()
        puts "CHILD, Before Parent altered()"
        super()
        puts "CHILD, After Parent altered()"
    end
end

dad = Parent.new()
son = Child.new()

dad.altered()
son.altered()
