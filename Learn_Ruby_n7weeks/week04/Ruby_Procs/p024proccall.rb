# p024proccall.rb

# Blocks are not objects  
# they can be converted into objects of class Proc by calling lambda method  
proc = lambda {puts 'Hello'}  
# method call invokes the block  
proc.call  
  
# another example  
toast = lambda do  
  'Cheers'  
end  
puts toast.call   
