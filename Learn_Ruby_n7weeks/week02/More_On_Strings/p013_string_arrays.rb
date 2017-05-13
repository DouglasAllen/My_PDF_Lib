# p013_string_arrays.rb

#puts Array.methods.sort.join(", ")

#puts Array.instance_methods.sort.join(", ")

#puts Array.instance_methods(false).sort.join(", ")

names_string = ('ann richard william susan pat')
p names_string
names_array = names_string.split(" ")
p names_array
#names_array = ["ann", "richard", "william", "susan", "pat"]

puts names_array[0] # ann  
puts names_array[3] # susan
  
## this is the same:  
names_array2 = %w(ann richard william susan pat)
p names_array2
# names_array2 = ["ann", "richard", "william", "susan", "pat"]

puts names_array2[0] # ann  
puts names_array2[3] # susan



