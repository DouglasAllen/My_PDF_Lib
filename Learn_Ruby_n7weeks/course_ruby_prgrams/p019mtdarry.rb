# p019mtdarry.rb
# if you give return multiple parameters,
# the method returns them in an array
# The times method of the Integer class iterates block num times,
# passing in values from zero to num-1

def mtdarry
  10.times do |num|
    square = num * num    
    return num, square
  end
end

mtdarry.each {|i| p i}