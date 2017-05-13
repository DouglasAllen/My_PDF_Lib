# exercise02.rb
# http://www.asciitable.com/
# %[flags][width][.precision]type
# "%flag width type" flag 0 pads with zeros, wide 5 five characters, precision none, type digit
code = "%05d" % 123 
puts code.class
puts code
# http://www.lix.polytechnique.fr/~liberti/public/computing/prog/libc.html#SEC94
# types
type_a = "%a" % 123.0
puts type_a

type_A = "%A" % 123.0
puts type_A

type_b = "%b" % 123
puts type_b

type_B = "%#B" % 123
puts type_B

type_c = "%c" % 123
puts type_c

type_d = "%d" % 123
puts type_d

type_i = "%i" % 123
puts type_i

type_o = "%o" % 123
puts type_o

type_u = "%u" % 123
puts type_u

type_x = "%x" % 123
puts type_x

type_X = "%X" % 123
puts type_X

type_e = "%e" % 123.0
puts type_e

type_E = "%E" % 123.0
puts type_E

type_f = "%f" % 123.0
puts type_f

type_g = "%#g" % 123.0
puts type_g

type_G = "%#G" % 123.0
puts type_G

# flags
flag_sp = "% 12d" % 123
puts flag_sp

flag_val = "%1$d" % [1,2,3]
puts flag_val

flag_pound = "%#e" % 123
puts flag_pound

flag_plus = "%+d" % 123
puts flag_plus

flag_minus = "%-d" % 123
puts flag_minus

flag_zero = "%0d" % 123
puts flag_zero

flag_aster = "%*d" % [1,2,3]
puts flag_aster

# precision
bin_10 = "%010b" % 123
puts bin_10
bin_10_2_comp = "%2b" % -123
puts bin_10_2_comp

=begin
>> string = 'test string'
=> "test string"
>> number = 32.0456789
=> 32.0456789
>> sprintf("%s and %2.2d", string, number)
=> "test string and 32"
>> "%s and %.2d"% ([string, number])
=> "test string and 32"
>> format("%s and %.2d", string, number)
=> "test string and 32"
>> printf("%s and %.2d", string, number)
test string and 32=> nil
=end
