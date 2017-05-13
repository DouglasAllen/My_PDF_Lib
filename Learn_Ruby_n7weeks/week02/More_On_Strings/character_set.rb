# character_set.rb

#system 'ri String.toutf8'
#system 'ri String.toutf16'
#system 'ri String.toutf32'
#system 'ri String.codepoints'

x = String.new("this is a new string.")
require 'kconv'

p x.toutf8
p x.toutf16
p x.toutf32


