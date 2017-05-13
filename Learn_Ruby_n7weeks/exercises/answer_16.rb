a = ["Magazine", "Sunday", "Jump"]
 
def report(a, title, eval_this)
  puts "Answer #{title} #{eval_this} sorts by length? #{instance_eval(eval_this) == ["Jump", "Sunday", "Magazine"]}"
rescue => error_stack
  puts "Answer #{title} #{eval_this} gives Error: #{error_stack}"
end
 
puts "Answers:"
report(a, '1.', 'a.sort') 
report(a, '2.', 'a.sort { |s| s }')
report(a, '3.', 'a.sort { |l, r| l <=> r }')
report(a, '4.', 'a.sort { |l, r| l.length <=>  r.length }')
report(a, '5.', 'a.sort_by { |s| s }')
report(a, '6.', 'a.sort_by { |s| s.length }')
