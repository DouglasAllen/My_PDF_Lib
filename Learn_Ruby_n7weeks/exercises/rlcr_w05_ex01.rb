# rlcr_w05_ex01.rb

class UnpredictableString < String
  def scramble
      self.split('').shuffle * ''            
  end
end

original_string = "It was a dark and stormy night."
10.times do
puts UnpredictableString.new(original_string).scramble
end

class UnpredictableString < String
  def scramble
    puts "object_id == #{self.object_id} and is #{self.class}."
    self.split('').shuffle * ''            
  end
end
original_string = "It was a dark and stormy night."
my_unpredictable_string = UnpredictableString.new(original_string)
puts "my_unpredictable_string is hereby given object id of #{my_unpredictable_string.object_id} of class #{my_unpredictable_string.class}."
10.times do
  puts my_unpredictable_string.scramble
end

