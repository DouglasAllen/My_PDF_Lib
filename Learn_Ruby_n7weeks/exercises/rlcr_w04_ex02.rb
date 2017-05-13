# rlcr_w04_ex02.rb

# Exercise2. Write a Rectangle class. I shall use your class as follows:

class Rectangle
  attr_reader :area, :perimeter
 
  def initialize(height, width)
    @area = height * width
    @perimeter = 2 * height + 2 * width
  end
 
  def new_dimensions(height, width) # returns @area and @perimeter in an Array for testing
    @area = height  * width
    @perimeter = 2 *(height * width)
    [@area, @perimeter]
  end
 
end
r = Rectangle.new(23.45, 34.67)
puts "Area is = #{r.area}"
puts "Perimeter is = #{r.perimeter}"
p r.new_dimensions(12, 16)
p r.new_dimensions(13, 16)



