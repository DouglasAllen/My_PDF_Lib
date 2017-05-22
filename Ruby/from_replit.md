# replit examples

```ruby
puts 'Hello World!'
```

```ruby
puts 'What is your name?'
puts 'Hi, ' + gets.strip + '!
```

```ruby
say = 'I love Ruby!'
5.times { puts say }
```

```ruby
str = "I will drill for a well in Hull."
regex = Regexp.new(/\w+ll/)

matchdata = regex.match(str)
while matchdata != nil
  puts matchdata[0]
  str = matchdata.post_match
  matchdata = regex.match(str)
end
```

```ruby
def fact(n)
  if n == 0
    1
  else
    n * fact(n-1)
  end
end
fact 6
```
