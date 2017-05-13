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
#def fizz i
#  'Fizz' if i % 3 == 0 
#end

#def buzz i
#  'Buzz' if i % 5 == 0
#end

#def fizzbuzzdazz i
#  string = ''
#  string << "#{fizz i}"
#  string << "#{buzz i}"
#  string << "#{dazz i}"
#  string.empty? ? i : string  
#end  

#(1..100).each {|i| puts fizzbuzz i }

class Array
  def iterate!(code)
    self.each_with_index do |n, i|
      self[i] = code.call(n)
    end
  end
end
fizzbuzz = []
(-15..16).each {|i| fizzbuzz << i }

def check_modulo? number, divisor
  number % divisor == 0 
end
 
buzzbazz = Proc.new do |n| 
  string = ""
  string << "Fizz" if check_modulo?(n, 3)
  string << "Buzz" if check_modulo?(n, 5)
  string << "Dazz" if check_modulo?(n, 7)
  string << "Kezz" if check_modulo?(n, 11)
  string == "" ? n : string
end
fizzbuzz.iterate!(buzzbazz)
#puts fizzbuzz.inspect

#def fizzbuzz(n)
#  string = "*"
#  string = ""
#  string << "Fizz" if check_modulo?(n, 3)
#  string << "Buzz" if check_modulo?(n, 5)
#  string << "Dazz" if check_modulo?(n, 7)
#  string << "Kezz" if check_modulo?(n, 11)
#  string << "*" 
#  string == "**" ? n : string
#  string == "" ? n : string  
#end
 

#(1..100).each {|i| puts fizzbuzz(i) }
puts <<-EOS
The class will now play FizzBuzz.
Jannis, Douglas, Brad, and Eelco will play in order.
And everyone will get a chance and not be left out of the game, to completion.
The rules will be this:  
When divisible by 3, Fizz, when divisible by 5, Buzz, when divisible by 7, Dazz, and 11, Kazz.
Ready?
EOS
 
players = %w(Jannis Douglas Brad Eelco)
-15.step(15, players.length) do |number|
  0.upto(players.length - 1).each do |player|
##    puts number + player
##    puts "#{players[player]} gets number #{number + player} and says #{fizzbuzz(number + player)}"
    puts <<-EOS
    #{players[player]} gets number #{number + player} and says #{fizzbuzz[(number + player) + 15]}
    EOS
  end
end
