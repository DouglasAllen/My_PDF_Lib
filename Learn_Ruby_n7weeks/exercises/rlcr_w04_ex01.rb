# rlcr_w04_ex01.rb

#Exercise1. Write a class called Dog,
# that has name as an instance variable and the following methods:

#bark(), eat(), chase_cat()
#I shall create the Dog object as follows:
#d = Dog.new('Leo')

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

end

d = Dog.new('Leo')
puts d.bark
puts d.eat
puts d.chase_cat

