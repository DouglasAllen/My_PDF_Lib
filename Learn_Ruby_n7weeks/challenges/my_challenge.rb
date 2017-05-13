string = "This is the string to do a cypher with."
puts string
hex_array = string.unpack("H*")
#puts hex_array.class
p hex_array
#~ cypher = hex_array * ''
#puts cypher.class
#~ puts "now this is what you have #{cypher}"


#~ decode = cypher.split('')
#~ puts decode.inspect
# now put them back into pairs of numbers
# to make the characters in hexidecimal so we 
# may read the original string by decoding it to ascii.


#decode = cypher.split(//)

#~ decoded = []
#~ count = decode.size - 1
#~ 0.step(count, 2) do |i|
    #~ decoded[i / 2] = (decode[i].to_s << decode[i + 1].to_s)  
#~ end
#~ puts decoded.inspect

#~ string = []
#~ count = decoded.size - 1
#~ (0..count).each do |i|
  #~ string << decoded[i].to_i(16).chr  
#~ end

#~ string = string * ''
#~ puts string .class
#~ puts string
