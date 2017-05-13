class Unpredictable_string < String
   def scramble(string)
       scrambled_string = string.split('').shuffle
       scrambled_string.join
    end
end
test_string = Unpredictable_string.new
puts test_string.scramble("It was a dark and stormy night.")
puts Unpredictable_string.new("something that should be unpredictable")

class Unpredictable_string < String
    attr_reader :string    
    def initialize(string)
       @string = string.split('').shuffle.join
    end
end
test_string = Unpredictable_string.new("It was a dark and stormy night.")
puts test_string.string

class Unpredictable_string < String
    def scramble(string)
       string.split('').shuffle.join
    end
end
test_string = Unpredictable_string.new("It was a dark and stormy night.")
puts test_string


