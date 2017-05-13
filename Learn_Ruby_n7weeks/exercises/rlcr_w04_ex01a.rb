# rlcr_w04_ex01a.rb

#Exercise1A (optional).
# Here's an additional challenge for all of you who already finished Exercise1:
# Write a method teach_trick which allows you to teach tricks to specific instances of the dog class like this:
Dog = Class.new do

  def initialize(name)
      @name = name
  end

  def bark
      "#{@name} says Arf! Ruff! Woof! (#{@name} speaks many dog languages)"
  end

  def eat
      "#{@name} is eating the canned stuff now."
  end

  def chase_cat
      "#{@name} is chasing the cat outdoors now."
  end

  def teach_trick(name, &block)
    define_singleton_method(name, &block)
  end 

  def method_missing(name, *args, &block) 
    "#{@name} doesn't know how to #{name}"
  end 

end

d = Dog.new('Lassie')
if d.respond_to?(:dance, true)  
  puts d.dance
else
  puts d.teach_trick(:dance) { "#{@name} is dancing!" }
end
if d.respond_to?(:poo, true)
  puts d.poo
else 
  puts d.teach_trick(:poo) { "#{@name} is a smelly doggy!" }
end
puts
d2=Dog.new('Fido')
puts d2.respond_to?(d2.dance) 
if d2.respond_to?(:laugh, true)
  puts d2.laugh
else
  puts d2.teach_trick(:laugh) { "#{@name} finds this hilarious!" }
end
puts d.respond_to?(d.laugh)
puts
d3=Dog.new('Stimpy')
puts d3.respond_to?(d3.dance)
puts d3.respond_to?(d3.laugh)
# >> Lassie is dancing!
# >> Lassie is a smelly doggy!
# >>
# >> Fido doesn't know how to dance!
# >> Fido finds this hilarious!
# >> Lassie doesn't know how to laugh!
# >>
# >> Stimpy doesn't know how to dance!
# >> Stimpy doesn't know how to laugh!

#You will also have to deal with the fact that people may get confused and will tell a certain dog 
#to perform a trick it hasn't learned yet...

