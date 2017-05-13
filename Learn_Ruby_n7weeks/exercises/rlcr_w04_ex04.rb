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
