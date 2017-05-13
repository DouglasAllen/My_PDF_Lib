# rlcr_w03_ex08.rb

#Exercise8. Write a Ruby program that prints the numbers from 1 to 100.
# But for multiples of three print "Fizz" instead of the number 
# and for multiples of five print "Buzz". 
# For numbers which are multiples of both three 
# and five print "FizzBuzz".
#  Discuss this in the FizzBuzz Forum. 
#fizzbuzz.rb
#i = 0
#while i < 100 do i 
#  i += 1
#  case
#    when i % 15 == 0 then puts "FizzBuzz"  
#    when i % 3 == 0 then puts "Fizz" 
#    when i % 5 == 0 then puts "Buzz"
#  else puts i
#  end
#end



#def fizzbuzz number
#    i = number
#    if i % 3 == 0 && i % 5 == 0
#       "FizzBuzz"
#       else if i % 3 == 0
#         "Fizz"
#       else if i % 5 == 0
#          "Buzz"
#          else
#           "#{i}"
#          end
#       end
#    end
#end

#for i in 1..100
#    puts fizzbuzz i
#end

#(1..100).each {|i| puts fizzbuzz i}
def fizz i
  'Fizz' if i % 3 == 0 
end

def buzz i
  'Buzz' if i % 5 == 0
end

def fizzbuzz i
  string = ''
  string << "#{fizz i}"
  string << "#{buzz i}"
  string.empty? ? i : string  
end  

(1..100).each {|i| puts fizzbuzz i }

def fizz? number
  number % 3 == 0 
end
def buzz? number
  number % 5 == 0
end
def fizzbuzz number
  string = ''
  string << "Fizz" if fizz?(number)
  string << "Buzz" if buzz?(number)
  string.empty? ? number : string  
end  
(1..100).each {|i| puts fizzbuzz(i) }


