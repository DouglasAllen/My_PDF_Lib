class W0111WritingOwnRubyMethods
=begin
=== p012zmm.rb

  class Dummy
    def method_missing(m, *args)
      txt = "There's no method called #{m} here.\n-- please try again."
      puts txt
    end
  end
  
  Dummy.new.anything
  There's no method called anything here.
  -- please try again.
=end
  def method_missing;end
end