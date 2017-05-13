=begin
= Array#collect!

(from ~/.ri)
------------------------------------------------------------------------------
  ary.collect! {|item| block }   -> ary
  ary.map!     {|item| block }   -> ary
  ary.collect                    -> an_enumerator
  ary.map                        -> an_enumerator

------------------------------------------------------------------------------

Invokes the block once for each element of self, replacing the element with
the value returned by block. See also Enumerable#collect.

If no block is given, an enumerator is returned instead.

=end
a = [ "a", "b", "c", "d" ]
a.collect! {|x| x + "!" }
puts "line 21 #{a.inspect}"             #=>  [ "a!", "b!", "c!", "d!" ]

#system 'ri Array#collect!'

array = [1, 2, 3, 4]  
array.collect! {|n| n ** 2}
puts "line 27 #{array.inspect}"

system 'ri Enumerator#each_with_index'
class Array
  def iterate!
    self.each_with_index do |n, i|
      self[i] = yield(n)
    end
  end
end

array.iterate! {|n| n ** 2}
puts "line 39 #{array.inspect}" 

class Array
  def iterate!(&code)
    self.each_with_index do |n, i|
      self[i] = code.call(n)
    end
  end
end

array.iterate! {|n| n ** 2}
puts "line 58 #{array.inspect}"

system 'ri Proc'
def what_am_i(&block)
  block.class
end

puts "line 56 #{what_am_i {}}"

# Procedures, AKA, Procs

class Array
  def iterate!(code)
    self.each_with_index do |n, i|
      self[i] = code.call(n)
    end
  end
end

array_1 = [1, 2, 3, 4]
array_2 = [2, 3, 4, 5]

square = Proc.new {|n|
  n ** 2}

array_1.iterate!(square)
array_2.iterate!(square)

puts "line 77 #{array_1.inspect}"
puts "line 78 #{array_2.inspect}"

array = [1, 2, 3, 4]

array.iterate!(Proc.new do |n| 
  n ** 2
end)

puts "line 86 #{array.inspect}"

def callbacks(procs)
  procs[:starting].call

  puts "line 91 Still going"

  procs[:finishing].call
end

callbacks(:starting => Proc.new { puts "line 96 Starting" },
          :finishing => Proc.new { puts "line 97 Finishing" })

# Lambdas

array = [1, 2, 3, 4]

array.iterate!(lambda { |n| n ** 2 })

puts "line 105 #{array.inspect}"

def args(code)
  one, two = 1, 2
  code.call(one, two)
end

args(Proc.new{|a, b, c| puts "line 112 Give me a #{a} and a #{b} and a #{c.class}"})

#args(lambda{|a, b, c| puts "Give me a #{a} and a #{b} and a #{c.class}"})

def proc_return
  Proc.new { return "line 117 Proc.new"}.call # Proc does not return to the method but from itself..
  return "line 118 proc_return method finished."
end

def lambda_return
  lambda { return puts "line 122 lambda" }.call # lambda will return to the method.
  return "line 123 lambda_return method finished."
end

puts "line 126 #{proc_return}"
puts "line 127 #{lambda_return}"

def generic_return(code)
  code.call
  return "line 131 generic_return method finished."
end

#puts generic_return(Proc.new { return "Proc.new" })
puts "line 135 #{generic_return(lambda { return puts "line 135 lambda" })}"

def generic_return(code)
  one, two    = 1, 2
  three, four = code.call(one, two)
  return "line 140 Give me a #{three} and a #{four}"
end

puts "line 143 #{generic_return(lambda { |x, y| return x + 2, y + 2 })}"
begin
puts "line 145 #{generic_return(Proc.new { |x, y| return x + 2, y + 2 })}"# returns from Proc not method so gives jump error.
rescue
end

puts "line 149 #{generic_return(Proc.new { |x, y| x + 2; y + 2 })}"# Doing this without the return keyword becomes dicy

puts "line 151 #{generic_return(Proc.new { |x, y| [x + 2, y + 2] })}"# We may take advantage how Ruby interprets Arrays with assignment.

def square(n)
  n ** 2
end

array.iterate!(method(:square))

puts "line 159 #{array.inspect}"
