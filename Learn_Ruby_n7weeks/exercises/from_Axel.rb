class UnpredictableString < String
  def scramble
#    puts self
    bytes = []
    self.each_byte { |b| bytes <<  b }
    bytes.shuffle * ' '
    characters = []
    self.each_char {|c| characters << c}
    characters.shuffle * ''
#    old_array = []
#    self.each_char { |c| old_array << c }
#    new_array = []
#    new_array << old_array[rand(self.size)] while new_array.size < old_array.size
#    new_array.join
  end
end
puts UnpredictableString.new("It was a dark and stormy night.").scramble

 
