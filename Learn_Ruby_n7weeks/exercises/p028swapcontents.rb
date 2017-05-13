# p028swapcontents.rb - Program to swap the contents of 2 text files
# Asuumptions: The two files exist in the same folder as the program

# Function to read contents of one file and write them to another file
# Accepts 2 file names - file1 and file2
# Reads from file1 and writes to file2
def filereadwrite(file1, file2)
  f2 = File.open(file2, "w")
  f1 = File.open(file1, "r")
  while line = f1.gets
    f2.puts line
  end
  f1.close
  f2.close
end

#filereadwrite("file1.txt", "file.tmp")
#filereadwrite("file2.txt", "file1.txt")
#filereadwrite("file.tmp", "file2.txt")

#File.delete('file1.tmp')

def copy_file(source, destination)
    a = File.open(source, "r")
    b = File.open(destination, "w") 
    while line = a.gets
          b.puts line
    end
    a.close
    b.close
end


copy_file('file1.txt', 'file.tmp')
copy_file('file2.txt', 'file1.txt')
copy_file('file.tmp', 'file2.txt')
File.delete('file.tmp')
