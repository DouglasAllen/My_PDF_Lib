# p078rubymysql.rb
require 'mysql'

#my = Mysql.new(hostname, username, password, databasename)
con = Mysql.new('localhost', 'root', 'root', 'students')
rs = con.query('select * from rubyists') # use p080dbconnect.rb to file with data.
rs.each_hash { |h| puts h['name']}
con.close