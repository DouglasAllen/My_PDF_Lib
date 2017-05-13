# rlcr_w03_ex10.rb

# Exercise10. Write a Ruby program that, when given an array:
# collection = [1, 2, 3, 4, 5] calculates the sum of its elements.

collection = [1, 2, 3, 4, 5] 
sum = collection.inject(0) {|sum, element| sum + element}
puts "The sum of all elements in the collection, [1, 2, 3, 4, 5] is #{sum}."
# found at Enumerable#inject and http://rubylearning.org/classes/mod/page/view.php?id=49
sum = collection.inject :+
puts "The sum of all elements in the collection, [1, 2, 3, 4, 5] is #{sum}."


  
  
 

