# rlcr_w07_ex04.rb
#Exercise4. 
#Write a method last_modified(file) that takes a file name and displays something like this: 
#file was last modified 125.873605469919 days ago. 
#Use the Time class.

def last_modified(file)  
  time = Time.now - File.new(file).atime
  days = time / 86400.0
  "#{file} was last modified #{days} days ago."  
end

# create a testfile witk next line then comment out or use one of your own files.
#File.open("testfile", "w")


puts last_modified("testfile")

