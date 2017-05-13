# rlcr_w03_ex09.rb

# Exercise9. Given a string, write a program to reverse the word order (rather than character order).
# The String and Array classes provide methods which will be very helpful for solving this exercise.

def reverse_word_order(text)
  text.split.reverse.join(" ")
end
 
string = "1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz"
puts string
puts reverse_word_order(string)

=begin
 
  Lesson 4 Exercise 10
  Scott C Pettigrew
  Goal: Reverse a string's word order
  
=end
 
#def reverse_words(in_string)
#  in_string.split.reverse.join(' ')
#end
# 
#print "Enter a string --> "
#STDOUT.flush
#my_string = gets.chomp
# 
#puts reverse_words(my_string)

#def reverse_word_order(string)
#  string.split.reverse.join(" ")
#end
 
