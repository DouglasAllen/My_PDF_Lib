# unpredictablestring.rb
#Exercise1. Write a class UnpredictableString which is a sub-class of String. 
#This sub-class should have a method called scramble() which randomly rearranges any string as follows:

#>ruby unpredictablestring.rb
#daano.r n sdt a htIsw taikmgy r
#>Exit code: 0
# the original string was: "It was a dark and stormy night."
class String
    def scramble
      self.split('').shuffle.join            
    end
end

original_string = "It was a dark and stormy night."
puts original_string.scramble

class UnpredictableString < String
end

puts UnpredictableString.new(original_string).scramble
# and as a test to my statement above.
puts UnpredictableString.new(original_string).swapcase

