# ternary.rb

age = 15  
# We talk about the Range class later on  
# will output teenager  
puts (13...19).include?(age) ? "teenager" : "not a teenager" 

age = 23  
person = (13...19).include?(age) ? "teenager" : "not a teenager"  
puts person # => "not a teenager"  
