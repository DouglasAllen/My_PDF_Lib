a = [1,4,2,0,8,0,0,3,9] 
b = a.sort
while b[0] == 0
  b << b.shift
end
p b

c << a.shift while a[0].zero?
#p c

def compare(x,y)
  if x.zero?
    1
  elsif y.zero?
    -1
  else x <=> y
  end
end
 
d = a.sort {|x,y| compare x,y}
p d

#a = [1,4,2,0,8,0,0,3,9] 
e = a.sort 
f = a.grep(0)
e.delete(0)
e.concat(f)

p e
