# rlcr_w04_ex05.rb

#Exercise5. Difficulty level: MEDIUM Write a one-line Ruby script that displays on the screen all the files in the current folder 
#as well as everything in all its sub folders, in sorted order.

# Make use of Dir.glob method as follows:
#Dir.glob('**/*')
#Name this program inventory.rb.

#puts Dir.glob('**/*').sort

#Create an inventory file by typing the following at the command prompt:
#ruby inventory.rb > old-inventory.txt

#After a few days, when some files would have been added / deleted from this folder, run the program again like:
#ruby inventory.rb > new-inventory.txt

#Now, write another Ruby script that displays on the screen all the files that have been added in this folder since the time
# the old-inventory.txt was created.
#Discuss these exercises in the Week 4 forum. 

#file1 = File.open('new-inventory.txt', "r")
#file2 = File.open('old-inventory.txt', "r")


file1 = File.readlines('old-inventory.txt')
file2 = File.readlines('new-inventory.txt')

common = file1 & file2
added = file2 - common

puts "These files have been added in this folder since the time the old-inventory.txt was created."
puts added
deleted = file1-common
puts "These files have been deleted in this folder since the time the old-inventory.txt was created."
puts deleted

