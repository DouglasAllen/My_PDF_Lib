# p025mtdproc.rb 

=begin  
  You cannot pass methods into other methods (but you can pass procs into methods),  
  and methods cannot return other methods (but they can return procs)  
=end  
  
def some_method some_proc  
  puts 'Start of method'  
  some_proc.call  
  puts 'End of method'  
end  
  
say = lambda do  
  puts 'Hello'  
end  
  
some_method say  

