# rlcr_w03_ex01.rb
=begin
Exercise1. Why is the output of this program:

def method
 a = 50
 puts a
end
a = 10
method
puts a
as shown below:

50
10
ans: A is a local variable for main and method. They don't share the same domain.
But the order of operations is what matters here.
=end
 
def method
  a = 50
  puts a
end
a = 10
puts a
method

