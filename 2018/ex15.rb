#Reading files
#1.Opening files
#2.Reading the files

#We going to use ARGV or gets.chomp
#Accessing file while running the main
filename = ARGV.first
#Opening File
txt = open(filename)
#outputs filename 
puts "Here's your file #{filename}"
puts txt.read 
txt.seek(0)
puts txt.readline

print "Type the filename again: "
puts "> "
file_again = $stdin.gets.chomp
txt_again = open(file_again)
puts txt_again.read

=begin
Best to Remember is a CD player

read
readline
write('stuff')
seek(0)
truncate - empties
=end