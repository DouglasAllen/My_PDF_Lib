puts <<EOS
inject

The inject method (defined in the module Enumerable) lets you accumulate a value across the members of a collection. 
For example, you can sum all the elements in an array, and find their product, using code such as:


puts [1,3,5,7].inject(0) {|sum, element| sum+element} # => #{[1,3,5,7].inject(0) {|sum, element| sum+element}}
puts [1,3,5,7].inject(1) {|product, element| product*element} # => #{[1,3,5,7].inject(1) {|product, element| product*element}}

inject works like this: 
the first time the associated block is called, sum is set to inject's parameter (in this case 0) 
and element is set to the first element in the collection. 
The second and subsequent times the block is called, 
sum is set to the value returned by the block on the previous call (respectively 1, 4, 9). 
The final value of inject is the value returned by the block the last time it was called.

There's one final wrinkle: 
if inject is called with no parameter, 
it uses the first element of the collection as the initial value and starts the iteration with the second value. 
This means that we could have written the previous examples as:

puts [1,3,5,7].inject {|sum, element| sum+element} # => #{[1,3,5,7].inject {|sum, element| sum+element}}
puts [1,3,5,7].inject {|product, element| product*element} # => #{[1,3,5,7].inject {|product, element| product*element}}

clear

arr.clear -> arr

The Array clear method removes all elements from arr.

a = [ "a", "b", "c", "d", "e" ]
puts a.clear # => #{[ "a", "b", "c", "d", "e" ].clear}

concat

arr.concat( other_array ) -> arr

The Array concat method appends the elements in other_array to arr.

puts [ "a", "b" ].concat( ["c", "d"] ) # => #{[ "a", "b" ].concat( ["c", "d"] )}

pop

arr.pop -> obj or nil

The Array pop method removes the last element from arr and returns it or returns nil if the array is empty.

a = [ "a", "m", "z" ]
a.pop # => #{[ "a", "m", "z" ].pop}
puts a # => #{[ "a", "m", "z" ]-[[ "a", "m", "z" ].pop]}

empty?

arr.empty? -> true or false

The Array empty? method returns true if arr array contains no elements.

puts [].empty? # => #{[].empty?}
puts [ 1, 2, 3 ].empty? # => #{[ 1, 2, 3 ].empty?}

IO.read(name, [length [, offset]] ) -> string

The IO.read method opens the file, optionally seeks to the given offset, and then returns length bytes (defaulting to the rest of the file). 
read ensures the file is closed before returning.

A file testfile.txt contains: 

This is line one\\nThis is line two\\nThis is line three\\nAnd so on...\\n

Example:

IO.read("testfile.txt")

Output is:

#{IO.read("testfile.txt")}

IO.read("testfile.txt", 20) # => #{IO.read("testfile.txt", 20)}

IO.read("testfile.txt", 20, 10) # => #{IO.read("testfile.txt", 20, 10)}

io.stat -> stat

Returns status information.

Assuming that the file hellousa.rb exists 
new opens the file hellousa.rb in default "r" mode
and returns a new File object.

f = File.new("hellousa.rb")
s = f.stat 
puts s.atime # => #{File.new("hellousa.rb").stat.atime}
atime returns the last access time for this file as an object of class Time. 

file.path -> filename

Returns the pathname used to create file as a string. An example:

Assume the following folders exist,
then puts File.new("Backups/rubyprograms/smt.tmp", "w").path
displays:

#{File.new("Backups/rubyprograms/smt.tmp", "w").path}

io.lineno -> int
Returns the current line number in io. The stream must be opened for reading.

io.rewind -> 0
Positions io to the beginning of input, resetting lineno to zero.

Our file called testfile.txt whose contents are:

This is line one\\nThis is line two\\nThis is line three\\nAnd so on...\\n

Run this program:

f = File.new("testfile.txt")
puts f.readline # => #{File.new("testfile.txt").readline}
puts f.readline # => #{File.new("testfile.txt").readline}
f.rewind # => #{File.new("testfile.txt").rewind}
puts f.lineno # => #{File.new("testfile.txt").lineno}
puts f.readline # => #{File.new("testfile.txt").readline}

sleep( numeric=0 ) -> fixnum

The Kernel sleep method suspends the current thread for numeric seconds (which may be a Float with fractional seconds). 
Returns the actual number of seconds slept (rounded), which may be less than that asked for if the thread was interrupted. 
An argument of zero causes sleep to sleep forever.

The program:

puts Time.now
sleep 1.9 # roughly 2 seconds
puts Time.now

gives the output:

#{Time.now}
#{sleep 1.9}
#{Time.now}

Note: The Enumerable mixin provides collection classes with traversal and searching methods and with the ability to sort. 
The class must provide a method each, which yields successive members of the collection. 
Ruby 1.9 adds a substantial number of methods to this module, as well as changing the semantics of many others. 
EOS

f = File.new("testfile.txt")
puts f.readline # => #{File.new("testfile.txt").readline}
puts f.readline # => #{File.new("testfile.txt").readline}
puts f.readline # => #{File.new("testfile.txt").readline}
f.rewind # => #{File.new("testfile.txt").rewind}
puts f.lineno # => #{File.new("testfile.txt").lineno}
puts f.readline # => #{File.new("testfile.txt").readline}
file = <<HERE
#{File.new("testfile.txt").readline}
HERE

puts file
puts file

file = <<HERE
#{File.new("testfile.txt").readlines}
HERE

puts file