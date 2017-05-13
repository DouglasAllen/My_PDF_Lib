# rlcr_w02_ex03.rb

# Exercise3:
# Write a method leap_year?.
# It should accept a year value from the user, check whether it's a leap year, and then return true or false.
# With the help of this leap_year?() method calculate and display the number of minutes in a leap year (2000 and 2004)
# and the number of minutes in a non-leap year (1900 and 2005).
# Note: Every year whose number is divisible by four without a remainder is a leap year, excepting the full centuries,
# which, to be leap years, must be divisible by 400 without a remainder.
# If not so divisible they are common years. 1900, therefore, is not a leap year.


sample_years = [2000, 2004, 2008, 1600, 1900, 1700, 1901, 2001, 1999]
#years_data = %w(1900 2000 2004 2005)
#puts "The years to be tested and output are #{years_data}"
LEAPYEAR_DAYS = 366
YEAR_DAYS = 365
DAY_MINUTES = 1440
LEAPYEAR_MINUTES = LEAPYEAR_DAYS * DAY_MINUTES
YEAR_MINUTES = YEAR_DAYS * DAY_MINUTES

def leap_year? year
#  year = year.to_i
  year % 4 == 0  && year % 100 > 0 || year % 400 == 0
end

def minutes_in_a_year year
  (leap_year?(year) ? LEAPYEAR_MINUTES : YEAR_MINUTES)
end

def say_not year
  leap_year?(year) ? "" : "not "
end

#years_data.each do |year|
sample_years.each do |year|
   puts "#{year} has #{minutes_in_a_year year} minutes" + 
           " and is #{say_not year}a leap year."
end


#  puts "Year #{year} is not a leap year and has #{DAYMINUTES * YEARDAYS} minutes in the year"

 # What do you suppose could help to DRY this code? leap_year?(year)

# In your output lines, out of 194 characters, there is only a difference of 8 characters, and that difference includes one space.         Only 4 percent difference? Seems like a lot of typing for little benefit. It isn't even reusable?

#Why input_year as a name? Does the word 'input' provide value here? Is it important that we got it manually, or interactively? Or could we just call it 'year' and be done with it, communicating the important aspect of that variable as a named object? 

#Does that chomp help at all in your input_year assignment? Do the parenthesis help at all in your leap_year? methods evaluation?


#Re: What do you suppose could help to DRY this code?
#Some ternary operators.
#Re: It isn't even reusable?
#No.
#Re: Why input_year as a name?
#It was in the course ruby files that way. :-D
#Re: Does the word 'input' provide value here?
#No.
#Re:  Is it important that we got it manually, or interactively?
#No.
#Re:  Or could we just call it 'year' and be done with it, communicating the important aspect of that variable as a named object? 
#Yes.
#Re: Does that chomp help at all in your input_year assignment?
#No.
#Re: Do the parenthesis help at all in your leap_year? methods evaluation?
#Yes.
#[code ruby]

# You say of course you would do a patch. Then do a patch. Those things that might be nice to have be reusable, such as "is or is not" could be a method.

#Another thing that you probably could see using over and over again is the part where you are getting the minutes_in_a_year. You already have a reusable leap_year? method, so why not pull the reusable and repetitive and long ugly looking code out of your string?

# When using string interpolation, if it becomes unwieldy to read, then fix it. Your string could literally look like this:
#"#{year} has #{minutes_in_a_year(year)} minutes and #{is_or_not(leap_year?(year)} a leap year."
# "1999 has 525600 minutes and is not a leap year."


#Nothing too long about that in the context of Moodle or even reading the string. You know what the replacement will be in idea, if not in actuality. As you can see from my comment below using sample replacements.
 

















