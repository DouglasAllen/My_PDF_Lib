# rlcr_w07_ex02.rb

require_relative 'dtr_convertor'
m = DTRConvertor.new
puts m.convert(100.0)

require_relative 'dtr_convertor_patch'
m = DTRConvertor.new
puts m.convert(100.0)

