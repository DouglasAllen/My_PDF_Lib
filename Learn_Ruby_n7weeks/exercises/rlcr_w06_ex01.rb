#require 'mathn'
require "bignumber"

class Person
  attr_reader :name , :account_num, :balance
  def initialize(name, account_num, balance)
    @name = name
    @account_num = account_num
    @balance = balance
    # notice plenty of leading space for huge balances.
#    @balance = "%32.2f" % balance
  end
end 

me = Person.new('Douglas', 555, 1.88)
puts me.name, me.account_num, me.balance
them = Person.new('Knights of Templar', 666, 88000800000000888.88)
puts them.name, them.account_num, them.balance
