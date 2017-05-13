class W0106VariablesAndAssignment
=begin
===> p004stringusage.rb  
  
=== Defining a constant
  # =>
  PI = 3.1416
  puts PI
  3.1416

=== Defining a local variable
  # =>  
  my_string = 'I love my city, Pune'
  puts my_string
  I love my city, Pune

===  Conversions
  # =>
  # .to_i, .to_f, .to_s
  
  var1 = 5
  var2 = '2'
  puts var1 + var2.to_i
  7
  
=== <<; appending to a string
  # =>
  a = 'hello '
  a << 'world.
  I love this world...'
  puts a
  hello world.
  I love this world...
  
=== << marks the start of the string literal
  # =>
  # It is followed by a delimiter of your choice.
  # The string literal then starts from the next
  # new line and finishes when the delimiter is
  # repeated again on a line on its own.
  
  a = <<END_STR
  this is the string
  with a second line
  END_STR
  puts a
  this is the string
  with a second line
  
=end
  def strings;end
end