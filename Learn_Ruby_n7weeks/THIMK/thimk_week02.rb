# thimk_week02.rb
require 'colorize'

file2 = <<END

notice the blank line?
#{expand = defined?( expand ) ? expand : true}
expand is only initialized but not assigned anything yet. Local variables get initialized with nil before assignment.
expand = #{expand.inspect}

x = #{x = 10}
y = #{y = 20}
x, y = y, x, exchanges the order of assignment = #{x, y = y, x}
x = #{x}
y = #{y}

better use a different variable because of previous usages of x and y

#{z = pqr if false} blank because z is nil

if false
  z = pqr z gets initialized but can't assign to an undefined variable.
end
pqr is undefined
notice blank ?
z = #{z}
z = #{z.inspect}
The same wiil happen if assigned to itself. z is not assigned yet just initialized.
z = z
notice blank ?
z = #{z = z}
z = #{(z = z).inspect}
END
file = <<END
THIMK
Some background:

THINK was a one-word slogan developed by IBM founder Thomas J. Watson, Sr. 
It appeared in IBM offices, plants and company publications in the 1920s and in the early 1930s began to take precedence 
over other slogans in IBM. 
It eventually appeared in wood, stone and bronze, and was published in company newspapers, magazines, calendars, photographs, 
medallions -- even New Yorker cartoons -- and it remained for years the name of IBM's employee publication.
You can still find echoes of Watson's motto in the brand name of IBM's popular notebook computers: the ThinkPad. 
This photograph shows a number of THINK signs rendered in a variety of languages for display by IBM employees around the world.

Then, in the late 1950s, there was a counter-fad: signs saying THIMK began springing up in offices and schools. 
The point was that whoever wrote the sign obviously was not following his own advice, since he could not "think" well enough to 
spell the word "think" correctly! 
The THIMK sign originated in (or at least was popularized by) Mad Magazine.
http://www.madmagazine.com/blog/2012/03/14/found-vintage-mad-inspired-postcard
Back to Ruby:

I'd like you to THIMK.

a. Imagine for a moment, that you want to be able to set a variable, but if it's not set, you default to a known value. 
    You'ld rather do it on a single line.

     puts expand = defined?( expand ) ? expand : true
     Why is the output nil ?

b. What happens in the following Ruby code?

    x = 10
    y = 20
    x, y = y, x
    puts x
    puts y


c. In the following Ruby code, x gets the value nil and pqr remains an undefined local variable. Why?

    if false
      x = pqr
    end
    puts x
    puts pqr

Discuss these three in the THIMK thread.
END
puts file.green
puts file2.blue