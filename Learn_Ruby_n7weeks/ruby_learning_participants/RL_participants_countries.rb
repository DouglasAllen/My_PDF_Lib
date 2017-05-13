# RL_participants_countries.rb
require 'rubygems'
require 'mechanize'
require 'nokogiri'

agent = Mechanize.new
login_page = agent.get("http://rubylearning.org/classes/login/index.php")
login_form = login_page.forms.first
#~ puts login_form.dom_id

#######################################
login_form['username'] = "kb9agt"
#~ puts login_form['username']
login_form['password'] = "Ct:I4L.cd5" 
#~ puts login_form['password']
course = "Git-GitHub 7th batch"
teachers = {'India' => 1, 'Japan' => 1, 'United States' => 1}
#######################################
agent.submit(login_form)
#~ puts login_page.body

main_page = agent.get('http://rubylearning.org/classes/')
#~ puts main_page.body
course_link = main_page.link_with(:text => course)
#~ puts course_link.class
course_page = agent.get(course_link.href)
#~ puts course_page
participants_link = course_page.link_with(:text => 'Participants')
#~ puts participants_link
participants_page = agent.get(participants_link.href)

all_text = participants_page.search("//div[@id='showall']").inner_text
all_link = participants_page.link_with(:text => all_text)
all_page = agent.get(all_link.href)

list, countries = [], []
doc = Nokogiri all_page.body
doc.search("//td[@class='cell c3']").each do |e|
  n = e.inner_text.index(',')
  n = 0 unless n
  list << e.inner_text[0..n-1]
end

list.sort!

until list.empty?
  country, rest = list.partition{|e| list.first == e}
  countries << [country.first, country.length]
  list = rest
end

countries = countries.collect{|c, n| [c, teachers[c] ? n-teachers[c] : n]}
countries = countries.sort_by{|c, n| n}.collect{|c, n| [c, n] unless n.zero?}.reverse - [nil]

puts countries.map(&:first)
puts
puts countries.map(&:last)
