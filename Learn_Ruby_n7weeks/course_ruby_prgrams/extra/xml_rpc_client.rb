require 'xmlrpc/client'
#~ require 'nokogiri'
require 'pp'

#~ sever_doc = Nokogiri::XML(File.read("http://xmlrpc-c.sourceforge.net/api/sample.php")) # an experiment that fails.
server_doc = XMLRPC::Client.new2("http://xmlrpc-c.sourceforge.net/api/sample.php")
result = server_doc.call("sample.sumAndDifference", 5, 3)
pp result

sum = result["sum"]
difference = result["difference"]

puts "Sum: #{sum}, Difference: #{difference}"


