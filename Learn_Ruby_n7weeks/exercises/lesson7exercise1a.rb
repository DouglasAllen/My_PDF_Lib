# lesson7exercise1a.rb
require_relative 'lesson7exercise1'
obj = Klass.new("hello")
puts obj.say_hello

serialized_object = Marshal::dump(obj)
loaded_object = Marshal::load(serialized_object)
restored_object = Marshal::restore(serialized_object)
  
puts "The loaded object says #{loaded_object.say_hello}"
puts "The restored object says #{restored_object.say_hello}" 

