# rlcr_w03_ex06.rb

def granny_hears
    random_year = rand(21) + 1930
    'NO, NOT SINCE ' + random_year.to_s + '!'
end

def granny_going_def
    'HUH?! SPEAK UP, SONNY!'
end

until 'BYE' == speak = gets.chomp
#  random_year = rand(21) + 1930
#  speak == '' ? speak = 'blank' : speak = speak
  speak != "" and speak == speak.upcase ? (puts granny_hears) : (puts granny_going_def)
end
=begin

Exercise6. Write a Deaf Grandma program.
 Whatever you say to grandma (whatever you type in),
  she should respond with HUH?! SPEAK UP, SONNY!, unless you shout it (type in all capitals).
   If you shout, she can hear you (or at least she thinks so) and yells back, NO, NOT SINCE 1938! 
   To make your program really believable, have grandma shout a different year each time; 
    maybe any year at random between 1930 and 1950.
     You can't stop talking to grandma until you shout BYE.

Adapted from Chris Pine's Book.
• Write a Deaf Grandma program.
 Whatever you say to grandma (whatever you type in),
  she should respond with  HUH?!  SPEAK UP, SONNY!, unless you shout it (type in all capitals). 
  If you shout, she can hear you (or at least she thinks so) and yells back, NO, NOT SINCE 1938! 
  To make your program really believable, have grandma shout a different year each time;
   maybe any year at random between 1930 and 1950. 
   (This part is optional, and would be much easier if you read the section on 
   Ruby's random number generator at the end of the methods chapter.)
    You can't stop talking to grandma until you shout BYE.
    
Hint: Don't forget about  chomp!  'BYE'with an Enter is not the same as 'BYE' without one!
Hint 2: Try to think about what parts of your program should happen over and over again.
 All of those should be in your while loop.
 
For example:

You enter: Hello Grandma
Grandma responds: HUH?! SPEAK UP, SONNY!
You enter: HELLO GRANDMA
Grandma responds: NO, NOT SINCE 1938! 

=end



