# rlcr_w03_ex03.rb

#Exercise3. Make use of the class Dir for the following -

#Display your current working directory.
#Create a new directory tmp under your working directory.
#Change your working directory to tmp
#Display your current working directory.
#Go back to your original directory.
#Delete the tmp directory.


#puts "current working directory = #{File.absolute_path('./')}"
#File.absolute_path('./')
puts
puts "current working directory = #{Dir.getwd}"

Dir.mkdir('./tmp') unless File.directory?('./tmp') 
puts "Making directory named tmp unless it already exists."

Dir.chdir('./tmp')
puts "Changing to tmp directory"

puts "current working directory = #{Dir.getwd}"

Dir.chdir('../')
puts "Changing back to previous working directory"

puts "current working directory = #{Dir.getwd}"

Dir.delete('./tmp')
puts "tmp directory has been deleted."
puts


 
