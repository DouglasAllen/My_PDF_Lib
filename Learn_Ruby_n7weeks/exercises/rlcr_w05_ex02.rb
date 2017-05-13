# rlcr_w05_ex02.rb

# Exercise2. This exercise thanks to Kathy Sierra. 
# Once upon a time in a software shop, two programmers were given the same spec and told to "build it". 
# The Really Annoying Project Manager forced the two coders to compete, 
# by promising that whoever delivers first gets one of those cool Aeron chairs all the Silicon Valley guys have. 
# The spec. There will be shapes on a GUI, a square, a circle and a triangle. 
# When the user clicks on a shape, the shape will rotate clockwise 360 degrees (ie. all the way around) 
# and play an AIF sound file specific to that particular shape. 
# Go for it guys and show me your code.

# Note: This exercise is about inheritance, method overriding and method overloading not about UI.

class Shape
  def on_click
    "The #{rotate(self.class.to_s)} and #{play_sound(self.class.to_s)}"
  end
  def rotate(shape)
    "#{shape.downcase} rotates clockwise 360 degrees"
  end
  def play_sound(shape)
     'open #{shape.downcase}.aif'
     "opening #{shape.downcase}.aif"
  end  
end
class Square < Shape
end
class Circle < Shape
end
class Triangle < Shape
end
#puts Square.new.on_click
#puts Circle.new.on_click
#puts Triangle.new.on_click

my_shapes = [Triangle.new, Circle.new, Square.new] 

my_shapes.each do | shape |
  puts shape.on_click
end
