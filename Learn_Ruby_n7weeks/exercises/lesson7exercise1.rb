# lesson7exercise1.rb
class Klass
  def initialize(greeting)
    @greeting = greeting
  end
  attr_reader :greeting
  def say_hello
    @greeting
  end
end


