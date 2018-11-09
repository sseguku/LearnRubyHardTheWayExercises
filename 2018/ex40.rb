# #modules
require "./MyStuff.rb"
MyStuff.matooke()

# #Accessing a variable from another class
puts MyStuff::TANGERINE

# class stuff
   
#     def initialize()
#         @tangerine = "And now a thousand years between"
#     end
   
#     attr_reader : tangerine
  
#     def matooke()
#         puts "I am classy matooke!"
#     end
# end


class Song

    def initialize(lyrics)
    @lyrics = lyrics
    end

    def sing_it()
        @lyrics.each{
            |line| puts line
        }
    end

    def sing_again()
        @lyrics.each do |line|
            puts line
        end
    end
    
end

h_bd = Song.new(["Happy Birthday","To you", "dear friend"])

h_bd.sing_it()

h_bd.sing_again()