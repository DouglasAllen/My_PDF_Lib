# p063xself2.rb
class S
  def m
    puts "Class #{self.class} method #{self.methods - Object.methods}:"
  end
end
s = S.new
s.m
