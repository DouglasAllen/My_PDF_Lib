contents = <<'MEOS'
Challenge Topics

Here are a couple of challenges you guys are all able to complete now.

Have fun!


1) TWITTER CHALLENGE

Here's a little programming challenge for all interested participants of the Core Ruby course.
The objective is to write a short Ruby program that will fit into a Twitter message like this:

ruby -e ‘puts “Hello world!”’

Of course we would like to see more creative solutions than this, so use your imagination and see just how much 
Ruby you can pack into 129 characters (140 for a Twitter message minus ruby – e ‘’).

Happy hacking, Thanks to: *Michael Kohl

2) DISTRIBUTION OF A RANDOM NUMBER

    by Peter Crawford
    This is less of a puzzle than a problem. I'm interested in the distribution issue regarding the randomly chosen 
    number between -1 and 1. Using

    10.times{puts rand - rand}

    and using 100,000 iterations, output the number of iterations for each .1 increment.

    e.g.:

    -1 => 1507 –.9 => 2682 . . #other iterations here . .9 => 2793 1 => 1275

3) MULTIPLE UNIT CONVERSION

    This is a modified version of a challenge delivered to my batch by Jose Carlos Monteiro that taught me and several 
    of my classmates a lot about Ruby just by accepting and working through it:

    Write a program that asks for user input, then changes that input from one temperature unit to another 
    based upon the user's wishes.

    Write code to handle user input. That code must include a succinct explanation of how the user should type the 
    values so the program can understand if it's meant to convert from Celsius to Fahrenheit or vice-versa. 
    It will then proceed to "parse" the input and obtain two "values": 
    "conversion to make" and "value to use", where the first means to convert from Celsius to Fahrenheit or vice-versa 
    and the second is the temperature value to be converted.

    Write DRY (Don't Repeat Yourself) code - method(s) - for the conversion process, 
    assuming that the temperature value is always passed as a Float. 
    This is to "prevent" you from writing code to validate the argument. 
    But that doesn't mean you shouldn't validate the value. 
    Meaning that you shouldn't worry if the argument is or is not a Float - assume it is - 
    and instead worry if the value is within an "acceptable range". Consider absolute zero.

    If you want to take this challenge even further, then make the conversion program also able to handle other 
    units of temperature (such as Kelvin, Rankine, etc).

    Note: the intention here is not to have you code lines and lines of statements but to think in out-of-the-box, 
    abstract ways:

    Tip 1: Kelvin is just an "adjustment" of another calculation. ;-)
    Tip 2: A conversion of a value can be seen as unit_from, unit_to, value_to_convert. 
    An abstract example would be to convert 100 from Euros to US Dollars.

    Some Wikipedia References:

      Celsius
      Fahrenheit
      Kelvin
      Comparison of temperature scales

    This isn't a competition; just fun for everyone, whether you accept the challenge or not. 
    Have a blast with it! I sure did... :-P



    A note from Jose:

    There are several goals with this challenge:


    Having yet more fun with Ruby around week 2.
    Starting to walk the path of DRY - Don't Repeat Yourself.
    Keeping close attention not to break any progress made, unless state otherwise.
    Learning to "uphold" the contract between the person asking for features and the delivery of those features.
    You people can also challenge one another, this is not one-direction. 
    You can also look for gems that handle temperature conversions or other conversions such as distance. 
    How about a currency exchange rate conversion? Or building up upon code posted by others, 
    for example improving someone's code with input validation or stretching another's code to handle more units, 
    or fixing another's code bugs...



4) SOAK'ED AND WET FIZZ BUZZ

    #!/usr/bin/env ruby
    =begin
    (very) Non-DRY version of FizzBuzz
    Your mission, should you choose to accept it, Mr. Phelps, is to
    covertly DRY this WET code that was intercepted from CHAOS by
    Agent 99, and 007 would like to report your success to the
    Justice League as soon as possible.  This message will self
    destruct in 30 seconds.  (Well, it may sit in your cache
    directory for some time, actually, and it will be here, on
    your forum, the People's Court, and / or rubylearning.org.)
    =end
    number_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
                        17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
                        31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44,
                        45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
                        59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72,
                        73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86,
                        87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100]
    element = 0
    while element != 100
      print number_list[element] unless (number_list[element] / 3.0 ==(number_list[element] / 3.0).to_i) ||
                                    (number_list[element] / 5.0 ==(number_list[element] / 5.0).to_i)
      print 'fizz' unless number_list[element] / 3.0 != (number_list[element] / 3.0).to_i
      puts unless number_list[element] / 5.0 == (number_list[element] / 5.0).to_i
      puts "buzz" unless number_list[element] / 5.0 != (number_list[element] / 5.0).to_i
      if number_list[element] / 3.0 != (number_list[element] / 3.0).to_i then puts number_list[element] unless
                                      number_list[element] / 5.0 != (number_list[element] / 5.0).to_i
      end
      element = element + 1
    end

    The above is an exercise to show that it can be difficult to troubleshoot and debug code that is WET.

    If you would like to take it on, and fix the bug that is showing up here, feel free... but keep it WET!

    It is just part of a discussion about how to show one aspect of when your code is SOAKed. 
    If you start seeing the same thing over and over and over again, it is time to stop and 
    think about the problem at hand.

    The bug? It shows numbers evenly divisible by 5 as well as showing 'Buzz', 
    unless it is also divisible by three, then it works properly.

    Definition list:

    SOAK = Such Overly Analyzed Kode
    WET = Wildly Excessively Trashed
    DRY = Don't Repeat Yourself
MEOS

puts contents