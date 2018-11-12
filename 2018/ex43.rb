class Parent

    def implicit()
        puts "PARENT implicity()"
    end
end

class Child < Parent
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()