#prompting and passing

user_name = ARGV.first #gets the first argument
prompt = '> '

puts "Hi #{user_name}"
puts "I'd would like to ask you a few questions?"
puts "Do you like Chat Translator #{user_name}?"
puts prompt
likes = $stdin.gets.chomp 

puts "Have you downloaded Chat Translator from play store #{user_name}?"
puts prompt
download = $stdin.gets.chomp

puts "How much time do you spend in Chat Translator?"
    puts prompt
    time = $stdin.gets.chomp
    puts """
    Alright, so you said #{likes} about Chat Translator.
    You have #{download} downloaded it. Not so sure.
    And you spend #{time} minutes in it
    """