# p068dtserver.rb
# Date Time Server - server side using thread
# usage: ruby p068dtserver.rb

require "socket"

dts = TCPServer.new('localhost', 20000)
loop do
  Thread.start(dts.accept) do |s|
    #~ print(s, " is accepted\n")
    #~ puts "#{s} is accepted\n" 
    s.write("Hello from a TCP server thread. The time is #{Time.now}")
    #~ print(s, " is gone\n")
    #~ puts "#{s} is gone\n" 
    s.close
  end
end