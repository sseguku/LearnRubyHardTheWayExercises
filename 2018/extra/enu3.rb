#initialing arrays
a = [:uno, :dos, :tres]
b = ["one", "two", "three"]

#inject method in to this
#{:uno => "one", ... , :tres=> "three"}

a.inject({}) do |memo, numero|
    memo[numero] = b[a.index(numero)]
    memo
  end

  toppings = %w(dodo, mushroom, bacon)

    toppings.map do |topping|
        puts "I love #{topping} pizza!"
    end