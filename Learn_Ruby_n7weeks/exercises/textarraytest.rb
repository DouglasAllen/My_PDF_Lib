puts "Enter filename to analyze: "
filename = gets.chomp
unless File.exist?(filename)
  # If file does not exist, give error message.
   puts "Program exited because the file #{filename} does not exist."
  exit 0
end

lines = File.readlines(filename)
p lines
