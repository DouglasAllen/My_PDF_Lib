# rlcr_w03_ex05.rb

# Exercise5. Given a string s = 'key=value',
# create two strings s1 and s2 such that 
# s1 contains key and s2 contains value.
# Hint: Use some of the String functions.

s = 'key=value'
s = "monkey brains = think think"
s1, s2 = s.split('=')
puts s1.strip, s2.strip
#s1, s2 = s.scan(/\w+/) # nice
#puts s1, s2

#s1, s2 = s.split(/= */)


#s1, s2 = s.split('=')
#puts s1, s2

#s1,s2 = s.split('=',2) #only the first equal sign will split
##puts s1, s2 

#p s

#i = s.index('=')
#s1 = s.slice(0...i)
#s2 = s.slice(i+1..s.length)
#puts s1, s2



## p021rangesex.rb
##s = 'key=value'
#i = s.index('=')
#s1 = s[0...i]
#s2 = s[i+1,s.length]
#puts s1, s2 
