class W0111WritingOwnRubyMethods
=begin
=== p010aliasmtd.rb

  # alias new_name old_name
  # When a method is aliased, the new name refers
  # to a copy of the original method's body.

  def oldmtd
    "old method"
  end
  
  puts oldmtd
  
  #alias newmtd oldmtd
  
  def oldmtd
    "old improved method"
  end
  
  alias newmtd oldmtd
  puts oldmtd
  puts newmtd
  
=end
  def alias_method;end
end