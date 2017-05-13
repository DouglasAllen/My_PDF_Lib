# rlcr_w_02_ex_02.rb
# Exercise2. Run the following two programs and try and understand the difference in the outputs of the two programs.

# The program:

#10.times {|num| puts num}

#def mtdarry
#  10.times {|num| puts num}
#end

#array = []
#array.push(mtdarry)
#p mtdarry
#p array
def mtdarry
  10.times do |num|
    puts num
  end
end

mtdarry

#10.times do |num|
#  puts num
#end

# and the program:
#puts 10.times {|num| puts num}

#def mtdarry
#  10.times {|num| puts num}
#end

def mtdarry
  10.times do |num|
    puts num
  end
end

puts mtdarry

