# rl_w01_c03.rb

=begin
 multiplication_table (integer, heading = '', decorate = false)
  returns a string object
   Times Table to 9
 ===========================
  1  2  3  4  5  6  7  8  9
  2  4  6  8 10 12 14 16 18
  3  6  9 12 15 18 21 24 27
  4  8 12 16 20 24 28 32 36
  5 10 15 20 25 30 35 40 45
  6 12 18 24 30 36 42 48 54
  7 14 21 28 35 42 49 56 63
  8 16 24 32 40 48 56 64 72
  9 18 27 36 45 54 63 72 81
 ===========================
   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20
   2   4   6   8  10  12  14  16  18  20  22  24  26  28  30  32  34  36  38  40
   3   6   9  12  15  18  21  24  27  30  33  36  39  42  45  48  51  54  57  60
   4   8  12  16  20  24  28  32  36  40  44  48  52  56  60  64  68  72  76  80
   5  10  15  20  25  30  35  40  45  50  55  60  65  70  75  80  85  90  95 100
   6  12  18  24  30  36  42  48  54  60  66  72  78  84  90  96 102 108 114 120
   7  14  21  28  35  42  49  56  63  70  77  84  91  98 105 112 119 126 133 140
   8  16  24  32  40  48  56  64  72  80  88  96 104 112 120 128 136 144 152 160
   9  18  27  36  45  54  63  72  81  90  99 108 117 126 135 144 153 162 171 180
  10  20  30  40  50  60  70  80  90 100 110 120 130 140 150 160 170 180 190 200
  11  22  33  44  55  66  77  88  99 110 121 132 143 154 165 176 187 198 209 220
  12  24  36  48  60  72  84  96 108 120 132 144 156 168 180 192 204 216 228 240
  13  26  39  52  65  78  91 104 117 130 143 156 169 182 195 208 221 234 247 260
  14  28  42  56  70  84  98 112 126 140 154 168 182 196 210 224 238 252 266 280
  15  30  45  60  75  90 105 120 135 150 165 180 195 210 225 240 255 270 285 300
  16  32  48  64  80  96 112 128 144 160 176 192 208 224 240 256 272 288 304 320
  17  34  51  68  85 102 119 136 153 170 187 204 221 238 255 272 289 306 323 340
  18  36  54  72  90 108 126 144 162 180 198 216 234 252 270 288 306 324 342 360
  19  38  57  76  95 114 133 152 171 190 209 228 247 266 285 304 323 342 361 380
  20  40  60  80 100 120 140 160 180 200 220 240 260 280 300 320 340 360 380 400
  
  
table1 = multiplication_table 9, 'Times Table to 9', true
table2 = multiplication_table 20
puts table1
puts
puts table2
=end

#def multiplication_table(integer, header=false, decoration=false)
#  @table_size = integer
#  @header = header
#  @decoration = decoration
#  @string = ""
#  add_header
#  add_decoration
#  add_table
#  add_decoration
#  @string
#end
#def add_header
#  @string << @header + "\n" if @header
#end
#def add_decoration
#  @string << create_decoration(@table_size) + "\n" if @decoration
#end
#def add_table
#  1..@table_size.times do |i|
#    1..i*@table_size.times do |j|
#      @string << "%#{number_of_characters(@table_size)}d " % ((j+1)*(i+1))
#    end
#    @string << "\n"
#  end
#end
#def create_decoration(i)
#  "=" * i * (number_of_characters(i) + 1)
#end
#def number_of_characters(input)
#  input.to_s.length + 1
#end

#table1 = multiplication_table 9, 'Times Table to 9', true
#table2 = multiplication_table 20
#puts table1
#puts table2


def multiplication_table(integer, header = false, decoration = false)
    @integer = integer
    @header = header || ""
    @decoration = decoration || ""
    
    @table_size = integer.abs
    @table = ""
    integer_zero    
    create_header        
    create_decor_table    
    @header + @decoration + @table  + @decoration    
end

def integer_zero
    @table_size == 0 ? @table_size =+ 1 : @table_size    
end

def create_header
    if @header != ""
       @header = @header << "\n"
    end
end

def create_decor_table
    rows = @table_size
    columns = @table_size    
    rows.times do |row|
       row * columns.times do |column|
          number = ((column + 1) * (row + 1))
          @integer == 0 ? number = 0 : number
          @table << "%#{table_format(@table_size)}d " % number          
       end
    @table << "\n"        
    end
    create_decoration(@table.length)
end

def create_decoration(table_length)
    if @decoration != ""
       length = table_length / @table_size
       @decoration = "=" * (length - 1) + "\n"
    end
end

def table_format(width)
  width < 0 ? width.to_s.length + 2 : width.to_s.length + 1
end


=begin
 
 multiplication_table (integer, heading = '', decorate = false)
      returns a string object.
=end
 
table1 = multiplication_table 9, 'Times Table to 9', true
table2 = multiplication_table 20
 
puts table1
puts 
puts table2

#for i in -20..20
#  puts multiplication_table i, nil, true 
#end

#for i, has_header , has_decoration in [[0, true], [1, false, true], [9, true, true], [10], [20, true, true]]
#  puts multiplication_table(i, (has_header and "Times Table to #{i}"),  has_decoration) 
#end



