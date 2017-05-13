# simple_blocks.rb

def greet
  yield
end

greet {puts 'Hello'}

def verbose_greet(name)
  yield
end

verbose_greet("PuneRuby") {puts 'Hello'}
#verbose_greet("PuneRuby") {puts 'Hello', verbose_greet("PuneRuby")}  
