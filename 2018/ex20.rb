#files and functions

input_file = ARGV.first

#prints all the file information
def print_all(f)
    puts f.read
end

#rewinds to the first line
def rewind(f)
    f.seek(0)
end
# def print_a_line(line_count, f)
#     puts "#{line_count}, #{f.gets.chomp}"
# end
 
#prints the text on the line on which it is
def print_a_line(line_count, f)
    puts "#{line_count}, #{f.gets.chomp}"
  end
  
#open the file
current_file = open(input_file)

puts "First let's print the whole file:\n"

print_all(current_file)
rewind(current_file)

puts "\n\n\nLet's print three lines:"


current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1  
print_a_line(current_line, current_file)

current_line = current_line + 1  
print_a_line(current_line, current_file)
