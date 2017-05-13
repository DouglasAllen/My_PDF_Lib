class W0111WritingOwnRubyMethods
=begin
=== p009mymethods1.rb

  # Interpolation refers to the process of inserting the result of an
  # expression into a string literal.
  # The interpolation operator #{...} gets calculated separately
  
  def mtd(arg1="Dibya", arg2="Shashank", arg3="Shashank")
    "#{arg1}, #{arg2}, #{arg3}, "
  end
  
  puts mtd.class
  puts mtd << "Ruby"
=end
  def my_methods1;end
end