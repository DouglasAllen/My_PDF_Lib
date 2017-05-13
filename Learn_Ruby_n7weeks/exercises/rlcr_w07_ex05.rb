

#Exercise5. 
#Let's say you want to run some Ruby code (such as a call to a shell command) repeatedly at a certain interval 
#(for example, once every five seconds for one minute). 
#Write a method for this. 
#Do not use Thread class for now. 
#Hint: yield and sleep methods may be required. 


# rlcr_w07_ex05.rb
def shell_command(duration, interval)
  yield
  for times in 0...(duration / interval)
    sleep interval
    yield    
  end
end
# all time is in seconds
duration = 60
interval = 5

shell_command(duration, interval) {system 'ruby -e \'puts Time.now\''}
