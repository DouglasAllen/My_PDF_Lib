# Getting Input

```ruby
# p005methods.rb

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
```

```ruby
# p006ftoc.rb

puts 'Enter temperature in Fahrenheit: '
STDOUT.flush
temp_in_fahrenheit = gets.chomp
temp_in_celsius = (((temp_in_fahrenheit.to_f - 32.0) / 9.0) * 5.0)
puts "Temperature #{temp_in_fahrenheit}" +
    ' degree Fahrenheit = ' +
    format("%.2f", temp_in_celsius) +
    ' degree Celsius'
```
