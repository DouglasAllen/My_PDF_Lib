class W0111WritingOwnRubyMethods
=begin
=== p011vararg.rb

  # Variable number of parameters example:
  # The asterisk(*splat) is actually taking all method arguments sent
  # and assigning them to an array named my_string as shown below.
  
  def foo(*my_string)
    my_string.inspect
  end
  puts foo('hello','world')
  puts foo()

  def opt_args(a,*x,b)
    "#{a}, #{x}, #{b}"
  end

  puts opt_args("first_arg", "second_arg", "third_arg")
=end
  def vararg;end
end
