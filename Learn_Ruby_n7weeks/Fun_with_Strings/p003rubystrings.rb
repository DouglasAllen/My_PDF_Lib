# p003rubystrings.rb  
=begin  
  Ruby Strings  
  In Ruby, strings are mutable  
=end  
  
puts "Hello World"
  
# Can use " or ' for Strings, but ' is more efficient  
puts 'Hello World'
  
# String concatenation  
puts 'I like' + ' Ruby'
  
# Escape sequence  
puts 'It\'s my Ruby'
  
# New here, displays the string three times  
puts 'Hello' * 3
  
# Defining a constant  
# More on Constants later, here  
# http://rubylearning.com/satishtalim/ruby_names.html  
PI = 3.1416  
puts "PI = #{PI}"

# Things like new line \n only works in double quotes.
puts "Hello\nHello Again"

# These are ticks not single quotes.
puts "directory contents = #{`dir`}"
puts "list directory = #{`ls`}"

#system("tar --help")  # => true
#system("tar xzf test.tgz") # => errors if you don't have test.tgz to extract. Why not compress one first?
runstr = "ruby -e 'puts \"Hello Rubyists\"\'"
puts "A system call to run #{runstr} = #{system("ruby -e \'puts \"Hello Rubyists\"\'")}" 
system("ruby -e \'puts \"Hello Rubyists\"\'")

# Also only works with double quotes for printf using new line \n.
#printf('Number: %5.2f,\nString: %s\n', 7.18, 'FORPC101')
#puts
# Correct way
#printf("Number: %5.2f,\nString: %s\n", 7.18, 'FORPC101')

# 
#8.step(40, 5) {|i| print i, " " }
#puts
#8.step(40, 5) {|i| puts i}
  
