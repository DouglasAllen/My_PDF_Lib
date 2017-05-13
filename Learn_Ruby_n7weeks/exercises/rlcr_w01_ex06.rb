# exercise_w0106.rb
=begin
 Write a method called convert that takes one argument which is a temperature in degrees Fahrenheit.
 This method should return the  #temperature in degrees Celsius.
 To format the output to say 2 decimal places, we can use the Kernel's format method.
 For example, if x = 45.5678 then format("%.2f", x) will return the string 45.57.
 Another way is to use the round function as follows: puts (x*100).round/100.0
=end 
STDOUT.sync = true
# Converts Fahrenheit to Celsius values using format string
def convert(degrees_F = 73)
  (degrees_F - 32) * 5 / 9.0
end

def format(precision = 2)
  "%.#{precision}f"
end
# Converts Fahrenheit to Celsius values using rounding
def round(degrees_F = 68, exponent = 2)  
    ((convert degrees_F) * 10.0 ** exponent).round / 10.0 ** exponent
#    convert degrees_F.round(exponent)   
end
# Checks for "" (new line)
#def my_input
#gets.to_f
#  input = gets.chomp.to_f  
#  if input == "" 
#    input = 0
#    else
#      input = input.to_f
#  end
#end

#def my_input2
#gets.to_i
#  input = gets.chomp.to_i    
#  if input == "" 
#    input = 2
#    else
#      input = input.to_i
#  end
#end

def input(applied_action_as_symbol_or_string = :inspect)
  gets.send(applied_action_as_symbol_or_string)
end
#print "Please type in a number, I will return it as an integer. "
#puts input(:to_i).inspect
#print "Please type in a number, I will return it as a float. "
#puts input(:to_f).inspect
#print "Please enter anything, it will remain a string. "
#puts input.inspect

puts
puts "The default for convertion is set to 73 and 68 degrees Fahrenheit respectively."
puts "Fahrenheit to Celsius conversion using format string for 73 degrees F is #{format() % convert} degrees C."
puts "Fahrenheit to Celsius conversion using rounding for 68 degrees F is #{round} degrees C."
puts
puts "Enter the temperature in Fahrenheit degrees you would like to convert to Celsius degrees."
puts "Defaults to 0 degrees if no entry was made."
degrees_F = input(:to_f)  
puts "Fahrenheit to Celsius conversion for #{degrees_F} degrees F using format string is #{format % convert(degrees_F)} degrees C."
puts "Fahrenheit to Celsius conversion for #{degrees_F} degrees F using rounding is #{round(degrees_F)} degrees C."
puts
puts "Enter the temperature in Fahrenheit degrees you would like to convert to Celsius degrees."
puts "Defaults to 0 degrees if no entry was made."
degrees_F = input(:to_f)
puts "Enter the number of decimal places for the result."
puts "Defaults to 0 decimal places if no entry was made."
precision = input(:to_i)
puts "Fahrenheit to Celsius conversion for #{degrees_F} degrees F using format string with #{precision} decimal places is #{format(precision) % convert(degrees_F)} degrees C."
puts "Fahrenheit to Celsius conversion for #{degrees_F} degrees F using rounding with #{precision} decimal places is #{round(degrees_F, precision)} degrees C."
puts
