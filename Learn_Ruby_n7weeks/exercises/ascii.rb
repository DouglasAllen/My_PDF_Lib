decimal = (0..127)
ascii = {}
decimal.each { |a| ascii.store(a, a.chr)}
decimal.each { |a| print ascii[a] }

characters = []
decimal.each { |b| characters << [b, b.chr] }
# puts "An easy ASCII lookup"
# puts "Enter the decimal value for the ASCII character."
# decimal = gets.chomp.to_i

# puts characters[decimal]

print ascii[0]