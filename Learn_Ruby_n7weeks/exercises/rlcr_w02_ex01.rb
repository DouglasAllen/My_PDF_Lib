# Exercise1: 
# Write a program that processes the string
# s = "Welcome to the forum.\n
#      Here you can learn Ruby.\n
#      Along with other members.\n"
# a line at a time, using all that we have learned so far.

# The expected output is:

#>ruby tmp.rb
#Line 1: Welcome to the forum.
#Line 2: Here you can learn Ruby.
#Line 3: Along with other members.
#>Exit code: 0

# rlcr_w_02_ex_01.rb

s = "Welcome to the forum.
Here you can learn Ruby.
Along with other members."

s = "Now is the time\nfor all good men\nto come to the aide\nof their country.\n"
#new_s1 = s.split("\n")

#new_s1.each do |line|
#  puts "Line #{new_s1.index(line) + 1}: #{line}"  
#end
#i = 0
#s.each_line {|l| print "Line " + (i += 1).to_s + ": "; print l }
#s.split("\n").each do |line|
  (1..s.split("\n").size).each do |num|
    puts "Line #{num}: #{s.split("\n")[num - 1]}"
  end
#end
# Omar's Solution
# Here is our string
#s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
#s = "Now is the time\nfor all good men\nto come to the aide\nof their country.\n" 
# splitting string at each "\n" and putting it into an array
#splitted_text = s.split("\n")
 
# let's print the lines
#line_no = 1
#while line_no <= splitted_text.length do
#  puts " Line #{line_no}: #{splitted_text[line_no - 1]}"
#  line_no += 1
#end

# each_line_example.rb

#def numbered_lines(string)
#  i = 0
#  string.each_line { | l | 
#     print "Line " +
#           (i += 1).to_s + 
#            ": "; print l }
#end


# new line escape sequence takes care of itself proof.
#puts s
#numbered_lines(s)


#(lines = s.split("\n")).each_index { |i| puts "Line #{i+1}: #{lines[i]}" }

# l3e1.rb
# Write a program that processes the string s = "Welcome to the 
# forum.\nHere you can learn Ruby.\nAlong with other members.\n" a line at # a time, using all that we have learned so far. The expected output is:
 
# >ruby tmp.rb
# Line 1: Welcome to the forum.
# Line 2: Here you can learn Ruby.
# Line 3: Along with other members.
# >Exit code: 0
 

#line_num = 1
#t = s.split("\n")
#t.each do |line| 
#  puts "Line no: " + format("%d ",line_num) + line + "\n"
#  line_num += 1
#end

#index = 1
#s.split("\n").each do |str|
#  puts "Line #{index}: " + str
#  index += 1
#end

#lines = s.split("\n")

#n = 1
#lines.each do |line|
#puts "Line " + n.to_s + ": " + line
#n = n + 1
#end

#lines = s.split("\n")
#numbered_lines = [(1..lines.count).to_a, lines].transpose

#numbered_lines.each do |line|
#puts "Line %d: %s" % [line[0].to_s, line[1]]
#end

#lines = s.split("\n")

#lines.count.times do |num|
#puts "Line %d: %s" % [(num+1).to_s, lines[num]]
#end

#1.upto(lines.count) do |index|
#  puts "Line %d: %s" %[index, lines[index-1]]
#end

#s.strip.split('.').each_with_index do |n,i|
#  puts "Line #{i+1}: #{n.strip}"# bad code
#end

s.split("\n").each_with_index do |n,i|
  puts "Line #{i.next}: #{n}"
end

#s.each_line do |line|
#	puts "Line %d: %s" % [0.next, line]
#end

#s.each_line do |line, count = 0|
#       	puts "Line %d: %s" % [count.next, line]
#end

s.each_line.with_index do |line, count|
  puts "Line %d: %s" % [count.next, line]
end

s.each_line.with_index(1) do|n,i|
  puts "Line #{i}: #{n}"
end

s.each_line.with_index(1) do|n,i|
  puts "Line %d: %s" % [i,n]
end

#def num_lines(s)
#  x = 0
#  s.lines {|l| puts "Line #{x+=1}: #{l}"}
#end
#num_lines s


