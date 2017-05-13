# Here is one idea, and it displays concerns about whether a UnpredictableString should really be subclassed to String.
# Or if it is causing some additional problems. 
# Note: See how Hash behaves automatically unpredictably when UnpredictableString module is mixed in. 
# But this same thing does not happen when it is String that is mixed in.

# Can anyone spot what is going on? 
# The hint is right there in the module... 

#Anyone want to make their own class that can take advantage of this module? 
# (The lesson here is similar to how you use Comparable or Enumerable module for your own classes.)

class String # added String::to_a so that it could work with my module
  def to_a
    split(/ /)
  end
  def self.to_a
    split(/ /)
  end
end
 
# Now comes the discussion of do we or should we even subclass String
# And if we shouldn't, then we should strongly reconsider the following name
module UnpredictableString
 
  def self.extended(base)
    raise NotImplementedError, "To use UnpredictableString module #{base} class must respond to to_a" unless base.respond_to?(:to_a)
  end

  begin
    def self.included(base)
      raise NotImplementedError, "To use UnpredictableString module #{base} class must respond to to_a" unless base.allocate.respond_to?(:to_a)
    end
  end
  def scramble
    self.to_a.shuffle * ' '
  end
#  def scramble
#    self.split('').shuffle * ' '
#  end
  def to_s
    "#{self.scramble}"
  end
end

String.send(:include, UnpredictableString)
my_unpredictable_string = 'Now is the time for all good men...'
puts my_unpredictable_string           #
puts my_unpredictable_string.scramble  # Why does this only work with scramble?
                                       # remove the scramble method, and it is totally
                                       # predictable.
                                       #
my_unpredictable_string.extend(UnpredictableString)
puts my_unpredictable_string

my_unpredictable_hash = {one: 1, two: 2, three: 3, four: 4}
my_unpredictable_hash.extend(UnpredictableString)
puts my_unpredictable_hash             # Where this works unpredictably without needing to call scramble?
                                       #
Hash.send(:include, UnpredictableString)
six_through_nine_hash = {six: 6, seven: 7, eight: 8, nine: 9}
puts six_through_nine_hash
puts six_through_nine_hash.scramble #
