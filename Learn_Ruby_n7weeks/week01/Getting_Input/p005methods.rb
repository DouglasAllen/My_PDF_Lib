class W0108GettingInput
=begin
=== p005methods.rb

  # =>
  puts  
  puts "gets and chomp"
  puts "STDOUT.sync = true"
  STDOUT.sync = true
  puts "or"
  puts "STDOUT.flush"
  puts  
  puts "puts \"In which city do you stay?\""
  puts "city = gets.chomp"
  puts "puts \"The city is \" + city"
  puts "In which city do you stay?"
  city = gets.chomp  
  puts "The city is " + city
  puts 
=end
  def input_methods;end
end  
