#Reading files
#1.Opening files
#2.Reading the files

#We going to use ARGV or gets.chomp
#Accessing file while running the main
filename = ARGV.first
#Opening File
txt = open(filename)

puts "Here's your file #{filename}"
print txt.read 

print "Type the filename again: "
puts "> "
file_again = $stdin.gets.chomp
txt_again = open(file_again)
puts txt_again.read
