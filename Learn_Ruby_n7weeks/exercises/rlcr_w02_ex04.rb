# rlcr_w02_ex04.rb

=begin
a. Imagine for a moment, that you want to be able to set a variable, but if it’s not set, you default to a known value. You’d rather do it on a single line.

puts expand = defined?( expand ) ? expand : true
Why is the output nil ?
expand ||= expand
=end
