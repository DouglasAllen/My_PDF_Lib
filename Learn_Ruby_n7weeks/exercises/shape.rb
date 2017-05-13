class Shape
  def on_click(shape)
    "The #{rotate(shape)} #{play_sound(shape)}"
  end
  def rotate(shape)
    "#{shape.to_s.downcase} rotates clockwise 360 degrees"
  end
  def play_sound(shape)
    "and plays the #{shape.to_s.downcase} sound."
  end  
end

class Square < Shape
end

class Circle < Shape
end

class Triangle < Shape
end

puts Shape.new.on_click(Square)
puts Shape.new.on_click(Circle)
puts Shape.new.on_click(Triangle)
