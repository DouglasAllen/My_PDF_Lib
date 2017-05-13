file = <<-STR_END

obj.inspect -> string

The Object class has an inspect method that returns a string containing a human-readable representation of obj. 
If not overridden, uses the to_s method to generate the string.

puts [ 1, 2, 3..4, 'five' ].inspect
#{[ 1, 2, 3..4, 'five' ].inspect}

ObjectSpace.each_object( h class_or_mod i ) {| obj | block } -> fixnum

The Ruby runtime system needs to keep track of all known objects. 
This information is made accessible via the ObjectSpace.each_object method. 
It returns the number of objects found. 
Objects of Fixnums, Symbols, true, false, and nil are never returned. 

ObjectSpace.each_object do |obj|
  printf "%20s: %s\\n", obj.class, obj.inspect
end
STR_END
#~ ObjectSpace.each_object do |obj|
  #~ puts
  #~ printf "%20s: %s", obj.class, obj.inspect
#~ end
#~ puts
#~ ObjectSpace.each_object do |obj|
    #~ puts obj
#~ end
include ObjectSpace
puts count_objects
os_array = []
   each_object do |obj|
     os_array << obj
   end

   a = "A"
   b = "B"
   c = "C"

   define_finalizer(a, proc {|id| puts "Finalizer one on #{id}" })
   define_finalizer(b, proc {|id| puts "Finalizer two on #{id}" })
   define_finalizer(c, proc {|id| puts "Finalizer three on #{id}" })

   
filenext = <<STR_END

If you specify a class or module as a parameter to each_object, only objects of that type will be returned.

enum.partition {| obj | block } -> [ true_array, false_array ]

The partition method of module Enumerable, divides a collection into two parts.

When partition is called and passed a block, it returns two arrays, 
the first containing the elements of enum for which the block evaluates to true, the second containing the rest.

nums = [1,2,3,4,5,6,7,8,9]

odd_even = nums.partition {|x| x%2 ==1}

puts odd_even
#{[1,2,3,4,5,6,7,8,9].partition {|x| x%2 ==1}}

#enum.any? h {| obj | block } -> true or false

#The quantifier method any? of module Enumerable makes it easier to test the nature of a collection. 

nums = [1,2,3,4,5,6,7,8,9,nil]

# Are any of these numbers even?

flag = nums.any? {|x| x%2 ==0}

puts flag # true 
#{[1,2,3,4,5,6,7,8,9,nil].any? {|x| x%2 ==0}}

It passes each element of the collection to the given block. 
The method returns true if the block ever returns a value other than false or nil. 
In the absence of a block, this simply tests the truth value of each element. 
That is, a block {|x| x} is added implicitly. 

flag1 =nums.any?

list contains at least one true value

# (non-nil or non-false)

puts flag1 # true 
#{[1,2,3,4,5,6,7,8,9,nil].any?}

enum.all? h {| obj | block } -> true or false

The quantifier method all? of module Enumerable makes it easier to test the nature of a collection. 

nums = [1,2,3,4,5,6,7,8,9,nil]

Are all of these numbers even?

flag = nums.all? {|x| x%2 ==0}

puts flag # false
#{[1,2,3,4,5,6,7,8,9,nil].all? {|x| x%2 ==0}} 

It passes each element of the collection to the given block. 
The method returns true if the block never returns false or nil. 
In the absence of a block, this simply tests the truth value of each element. 
That is, a block {|x| x} is added implicitly. 

flag1 =nums.all?

# list contains no falses or nils

puts flag1 # false
#{[1,2,3,4,5,6,7,8,9,nil].all? {|x| x%2 ==0}} 
STR_END

puts file
puts filenext
#~ puts os_array