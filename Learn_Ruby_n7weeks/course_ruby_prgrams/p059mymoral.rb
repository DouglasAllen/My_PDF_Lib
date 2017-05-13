# p059mymoral.rb
module Moral
  VERY_BAD = 0
  BAD         = 1
  def Moral.sin(badness)
    puts badness.eql?(0) ? 'VERY_BAD' : 'UNKNOWN'
  end
end