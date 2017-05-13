# Using Flip-Flops
#~ a=b=c=(1..100).each do |num|
  #~ print num, ?\r,
  #~ ("Fizz\n" unless (a = !a) .. (a = !a)),
  #~ ("Fizz\n" unless (a = !a) ...(a = !a)),
  #~ ("Buzz\n" unless (b = !b) ... !((c = !c) .. (c = !c))),
  #~ ?\n
#~ end 

# Standard use
#~ 100.times do |n|
  #~ str = ''
  #~ str += 'Fizz' if n % 3 === 0
  #~ str += 'Buzz' if n % 5 === 0
  #~ puts str.length > 1 && str || n
#~ end


a=b=c=(1..13)
p a  
p (a = !a) 
p b  
p (b = !b)
p c 
p (c = !c) 
