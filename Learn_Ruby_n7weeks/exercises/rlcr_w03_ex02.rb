# rlcr_w03_ex02.rb
=begin
Exercise2. Thanks to Marcos Souza for this exercise. A plain text file has the following contents:

test test test test test
test test test test test
test test test test test
test test test test test
test test test test test
test test word test test
test test test test test
test test test test test
test test test test test
test test test test test
test test test test test
Observe that in this file, there exists a word 'word'. Write a clever but readable Ruby program that updates this file and the final contents become like this:
test test test test test
test test test test test
test test test test test
test test test test test
test test test test test
test test inserted word test test
test test test test test
test test test test test
test test test test test
test test test test test
test test test test test
Do not hard-code the file name.
=end
# ruby rlcr_w03_ex02.rb ./plain_text.txt
STDOUT.sync = true
if ARGV[0] == nil 
   puts "Usage: ruby rlcr_w03_ex02.rb file.txt "
   exit
end
puts "showing original file contents"
File.open(ARGV[0], 'r') do |f|  
  while line = f.gets  
    puts line  
  end  
end
lines = []
File.open(ARGV[0], 'r') do |f|  
    f.each do |line|      
      if line.include?("word") == true
         line.gsub!(" word ", " inserted word ")
      end
      lines << line   
    end  
end

puts "inserting words"

File.open(ARGV[0], 'w') {|f| f.puts lines}
puts "showing altered file contents"
File.open(ARGV[0], 'r') do |f|  
  while line = f.gets  
    puts line  
  end  
end

puts "restoring to original"  
lines = []
File.open(ARGV[0], 'r') do |f|  
    f.each do |line|      
      if line.include?("inserted") == true
         line.gsub!(" inserted word ", " word ")
      end
      lines << line   
    end  
end
File.open(ARGV[0], 'w') {|f| f.puts lines}  
File.open(ARGV[0], 'r') do |f|  
  while line = f.gets  
    puts line  
  end
end  

