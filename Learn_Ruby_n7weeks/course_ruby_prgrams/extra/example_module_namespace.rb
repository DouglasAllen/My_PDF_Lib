# This code shows that the Module is used to provide
# namespace.

# puts "----Define Animals module with Stalk class"
module Animals
  class Stalk  
    def about
      "I am in the Animals module and you are stalking me."
    end
  end
end

# puts "----Define Mineral module with Stalk class"
module Minerals
  class Stalk  
    def about
      "I am a mineral in the Minerals module that you are stalking."
    end
  end
end

# puts "----Define Plants module with Stalk class"
module Plants
  class Stalk
    def about
      "I am a vegetable in the Plants module that you are stalking."
    end
  end 
end

puts "----Create an instance of Stalk class of Animals Module"
a = Animals::Stalk.new

puts "----Call about method of the Stalk class of Animals Module"
puts a.about

puts "----Create an instance of Stalk class of Minerals Module"
b = Minerals::Stalk.new

puts "----Call about method of the Stalk class of Minerals Module"
puts b.about

puts "----Create an instance of Stalk class of Plants Module"
c = Plants::Stalk.new

puts "----Call about method of the Stalk class of Plants Module"
puts c.about

# ruby example_module_namespace.rb



