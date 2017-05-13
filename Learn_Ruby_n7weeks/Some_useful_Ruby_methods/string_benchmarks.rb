require 'benchmark'
mark = <<EOS
a string
EOS
n = 1000000
Benchmark.bm do |x|
  x.report("assign single quotes") { n.times do; c = 'a string'; end}
  x.report("assign double quotes") { n.times do; c = "a string"; end}
  x.report("assign interpolation") { n.times do; c = "a string #{'b string'}"; end}
  x.report("concat single quotes") { n.times do; 'a string ' + 'b string'; end}
  x.report("concat double quotes") { n.times do; "a string " + "b string"; end}
  x.report("assign here doc") {n.times do;  mark; end}
end