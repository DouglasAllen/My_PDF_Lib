#~ system 'gem install hpricot'

puts <<EOF
class

The method class of class Object, returns the class of obj, now preferred over Object#type,
as an object's type in Ruby is only loosely tied to that object's class.
This method must always be called with an explicit receiver, as class is also a reserved word in Ruby.

puts 2.class # => #{2.class}

puts 'Ruby'.class # => #{ 'Ruby'.class}

puts nil.class # => #{nil.class}

Module.constants -> array

The constants method returns an array of the names of all constants defined in the system.
This list includes the names of all modules and classes.

puts Module.constants.sort.join(' ')
#{Module.constants.sort.join(' ')}

loop { block }

The Kernel method loop repeatedly executes the block.

i = 0
loop do
  i += 1
  print i
  break if i > 75
end
EOF
i = 0
loop do
  i += 1
  print i
  break if i > 75
end
puts
puts <<EOF

obj.between?( min, max ) -> true or false>

The Module Comparable has a method between? that returns false if obj <=> min is less than zero
or if obj <=> max is greater than zero, true otherwise.

puts 3.between?(1, 5) # => #{3.between?(1, 5)}

puts 6.between?(1, 5) # => #{6.between?(1, 5)}

puts 'cat'.between?('ant', 'dog') # => #{'cat'.between?('ant', 'dog')}

puts 'gnu'.between?('ant', 'dog') # => #{'gnu'.between?('ant', 'dog')}
EOF
puts <<EOF
abort( msg )

Kernel abort method terminates execution immediately with an exit code of 1.
The optional String parameter is written to standard error before the program terminates.

p 'hello'
#{'hello'}
abort('Premature abort')

puts 'hi'

EOF
puts <<EOF
#{'hello'}
#{abort('Premature abort')}
#{'hi'}
EOF