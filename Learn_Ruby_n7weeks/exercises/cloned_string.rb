# Instead of subclassing a String, I really cloned a String.  This includes all 
# singleton methods, state, and behaviors of String at this moment.
 
UnpredictableString = String.clone
 
my_unpredictable_string = UnpredictableString.new(
  "Now is the time for all students to learn different ways to solve problems in Ruby.")
 
UnpredictableString.class_eval do
  define_method(:scramble) do
    self.split(/ /).shuffle * ' '
  end
end
 
def my_unpredictable_string.to_s
  self.scramble
end
 
puts my_unpredictable_string.scramble
puts my_unpredictable_string # Because it is initially really a String, it has the same
                             # problems as before when we sub-classed string.
                             # See my prior post, regarding the hint in the module


# This time I don't subclass String class. 
# In fact, if you use UnpredictableString.allocate.kind_of?(String) you will get false. 
# This would not be true if I simply did UnpredictableString = String

# The cloning does more than .dup would do, as it is an exact clone of String up to that point, including state and behaviors (Instance variables, Class variables, etc, and methods, including singleton methods, if any).

# Looking through my code comments, you still have a predictable object though.

# But, looking through the comments of my code, and this is because we have cloned a String with the same powers and the same weaknesses as the original String. 
# (Super Hint: Rubinius does not suffer the same fate)
