def mask_exclusive(payload, mask)
  result = []
  payload.each_with_index do |byte, i|
    #~ puts "%08d" % byte.to_s(2).to_i
    #~ puts "%08d" % mask[i % 4].to_s(2).to_i
    #~ puts "%08d" % (byte ^ mask[i % 4]).to_s(2).to_i
    #~ puts "result = #{byte ^ mask[i % 4]}"
    result[i] = byte ^ mask[i % 4]
  end
  result
end 

bytes = [72, 101, 108, 108, 111, 44, 32, 119, 111, 114, 108, 100, 33]
bytes_binary = []
bytes.each do |byte|
  bytes_binary << "%08d" % byte.to_s(2).to_i
end
p  bytes_binary 
mask  = [23, 142, 94, 24]
mask_binary = []
4.times do 
  mask.each do |mask|
    mask_binary  << "%08d" % mask.to_s(2).to_i  
  end
end
p mask_binary

exclusive_or_result = []
mask_exclusive(bytes, mask).each do |result|
   exclusive_or_result <<  "%08d" % result.to_s(2).to_i
end
p exclusive_or_result
#~ byte_string = []
#~ bytes.each do |byte|
  #~ byte_string <<  byte.to_s
#~ end
#~ p byte_string

#~ class String
  #~ def convert_base(from, to)
    #~ self.to_i(from).to_s(to)
  #~ end
#~ end

 class Fixnum
  def convert_base(to)
    self.to_s(to).to_i
  end
end

p '1010'.to_i(2).convert_base(10)       #=> "10"
p 'FF'.hex.convert_base(2)   #=> "11111111"
p 72.convert_base(16)
#~ hex_byte = []
#~ byte_string.each do |byte|
  #~ hex_byte << byte.convert_base(10, 16)
#~ end

#~ p hex_byte

#~ p "AA".to_i(16)
#~ p 10.to_s(16)

#~ p bytes
#~ bytes_hex_strings = []
#~ bytes.each do |byte|
  #~ bytes_hex_strings << byte.to_s(16)  
#~ end
#~ p bytes_hex_strings
#~ p mask
#~ mask_hex_strings = []
#~ mask.each do |mask|
  #~ mask_hex_strings << mask.to_s(16)
#~ end
#~ p mask_hex_strings



