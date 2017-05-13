# p039symbol.rb
puts "string".object_id
puts "string".object_id
puts :symbol.object_id
puts :symbol.object_id
# p039xsymbol.rb
class Test
  puts :Test.object_id.to_s
  def test
    puts :test.object_id.to_s
    @test = 10
    puts :test.object_id.to_s
  end
end
t = Test.new
t.test