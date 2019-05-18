def add(a, b)
  puts "Adding #{a} and #{b}"
  return a + b
end

def subtract(*args)
  a, b=args
  puts "Subtracting #{a} and #{b}"
  return a-b
end

def multiply(a, b)
  puts "Multiplying #{a} * #{b}"
  return a*b
end

def divide(a, b)
  puts "Dividing #{a} / #{b}"
  return a/b
end

puts "Let's do some math with functions!"
age = add(30,5)
height = subtract(343,32)
weight = multiply(90,2)
iq  = 100 / 2

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"
puts "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"
