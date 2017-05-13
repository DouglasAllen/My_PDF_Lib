class W0111WritingOwnRubyMethods
=begin 
=== p012mtdstack.rb

  # The sequence the parameters are put on the stack is left to right.
  
  def mtd(a=99, b=a+1)
    [a,b]
  end
  
  puts mtd

  # Are the parameters passed by value or reference?
  #  Observe the following example:

  def downer(string)  
    string.downcase  
  end
  
  a = "HELLO"  
  downer(a)      # -> "hello"  
  puts a         # -> "HELLO"  
    
  def downer(string)  
    string.downcase!  
  end
  
  a = "HELLO"  
  downer(a)      # -> "hello"  
  puts a         # -> "hello"
  
=end
  def methos_stack;end
end