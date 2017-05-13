string = "This is what you have"
puts string
array = string.split('')
puts array * ''
ascii = string.unpack("C*")
puts ascii * ''
string = ascii.pack("C*")
puts string
array = string.unpack("C*")
hex_array = string.unpack("H*")
puts hex_array.inspect
puts hex_array * ''
hex_array = []
array.each {|char|
hex_array << char.to_s(16)
}
cypher = hex_array * ''
puts cypher.inspect
puts cypher.unpack("c*")
@cypher = ''
cypher.scan(/./) {|c|
@cypher << c
}
puts @cypher
cypher_array = cypher.split('')
p cypher_array
(0..cypher_array.size - 1).step(2) do |i|
  array << cypher_array[i] << (cypher_array[i + 1])
end
p array
@b = ''
string.scan(/./) { |b|
    # do something with b
    @b << b
}
puts @b
string = "an apple a day"
print "unique chars are: ", string.split('').uniq.sort, "\n"
sum = 0
string = 'This is a new millenium'
for ascval in string.unpack("C*") 
    sum += ascval
end
puts sum
