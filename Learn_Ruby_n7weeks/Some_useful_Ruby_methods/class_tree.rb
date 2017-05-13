# class_tree.rb

puts <<EOS
Crate a Dog class: #{Dog = Class.new}
What does Dog class inherite? #{Dog.superclass}
What does #{Dog.superclass} inherite? #{Dog.superclass.superclass}

But we skipped Class class completely because Dog inherits from it.
So let's try again.
What does Dog class inherite? #{Dog.class}
What does #{Dog.class} inherite? #{Dog.class.superclass}
What does #{Dog.class.superclass} inherite? #{Dog.class.superclass.superclass}
What does #{Dog.class.superclass.superclass} inherite? #{Dog.class.superclass.superclass.superclass}

Shall we try a couple more times?
What does #{Dog.class.superclass.superclass.superclass} inherite? #{Dog.class.superclass.superclass.superclass.superclass.class}
That was only the class of what we got back from trying to print it.
Looks like we got nothing after BasicObject then.

What does #{Dog.class.superclass.superclass.superclass.superclass.class} inherite? #{Dog.class.superclass.superclass.superclass.superclass.class.superclass}
Looks like we have come full circle then.
EOS
