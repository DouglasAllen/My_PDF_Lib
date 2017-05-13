# Variables And Assignment

## found in p004stringusage.rb

We are going to use IRB or Pry session here for the examples.

## Defining a constant

    >> PI = 3.1416
        ==>3.1416
    >> PI
        ==>3.1416

## Defining a local variable

    >> my_string = 'I love my city, Pune'
        ==>"I love my city, Pune"
    >> my_string
        ==>"I love my city, Pune"

## Conversions

    .to_i, .to_f, .to_s

    >> var1 = 5
        ==>5
    >> var2 = '2'
        ==>"2"
    >> var1 + var2.to_i
        ==>7

## <<; appending to a string

    >> a = 'hello '
        ==>"hello "
    >> a << 'world. I love this world...'
        ==>"hello world. I love this world..."

## << marks the start of the string literal

    It is followed by a delimiter of your choice.
    The string literal then starts from the next
    new line and finishes when the delimiter is
    repeated again on a line on its own.

    >> a = <<END_STR
    this is the string
    with a second line
    END_STR
        ==>"this is the string\nwith a second lime\n"
    >> a
        ==>"this is the string\nwith a second lime\n"
