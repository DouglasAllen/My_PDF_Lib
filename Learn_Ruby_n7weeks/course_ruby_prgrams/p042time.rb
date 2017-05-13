# p042time.rb
t = Time.now
# to get day, month and year with century
# also hour, minute and second
puts t.strftime("%d/%m/%Y %H:%M:%S")

# You can use the upper case A and B to get the full
# name of the weekday and month, respectively
puts t.strftime("%A")
puts t.strftime("%B")

# You can use the lower case a and b to get the abbreviated
# name of the weekday and month, respectively
puts t.strftime("%a")
puts t.strftime("%b")

# 24 hour clock and Time zone name
puts t.strftime("at %H:%M %Z")

# using new time objects.
t1 = Time.utc(1, 1, 1, 0, 0, 0, 0.0)
puts t1.strftime("%H:%M:%S start")
t2 = 123.456    # This is seconds in decimal.
t3 = t1 + t2
puts t3.strftime("%H:%M:%S.%3N end")