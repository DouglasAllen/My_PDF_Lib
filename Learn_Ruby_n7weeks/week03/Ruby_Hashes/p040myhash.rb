# p040myhash.rb  
h = {'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine'}  
puts h.length  # 3 
puts h['dog']  # 'canine'
h['cow'] = 'bovine'
h[12]    = 'dodecine'
h['cat'] = 99  
puts h  
puts h[12]

hws = {:dog => 'canine', :cat => 'feline', :donkey => 'asinine'}
puts hws.length  # 3
puts hws['dog']  # nil   
puts hws[:dog]  # 'canine'
hws[:cow] = 'bovine'
hws[12] = 'dodecine'
hws[:twelve] = 'dodecine'
hws[:cat] = 99
puts hws
puts hws[12]
puts hws[:twelve]
  
