=begin
functions
=end

def print_multiple(*args)
    arg1, arg2, arg3 = args
    puts "The first argument is #{arg1}"
    puts "The second argument is #{arg2}"
    puts "The third argument is '#{arg3}'"
end

def print_diff(*diff) #you can name anything in the parathesis
    test1, test2, test3 = diff
    puts "test1: #{test1}, test2: #{test2},test3: #{test3}"
end

def print_two(arg1, arg2)
    puts "This a different style of printing arguments #{arg1}  & #{arg2}"

end

def print_one(arg1)
    puts "arg1: #{arg1}"
end

def print_none()
puts "I got nothin'."
end

print_multiple(1,2,3)
print_diff("X","Y","Z")
print_two("one","two")
print_one(1)
print_none()