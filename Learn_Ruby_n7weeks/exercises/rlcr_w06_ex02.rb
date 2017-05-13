# rlcr_w06_ex02.rb
# http://ruby-mp3info.rubyforge.org/


#puts "Enter MP3 filename to analyze: "
#filename = gets.chomp
#puts filename
#unless File.exist?(filename)
#  # If file does not exist, give error message.
#   puts "Program exited because the file #{filename} does not exist."
#  exit 0
#end
#require 'mp3info'


  



#    if filename == ''      
#      entry_message
#      filename = gets.chomp
#      unless File.exist?(filename)
#         exit_message(filename)
#         exit 0    
#      end       
#    end
    
    

  
#  def entry_message
#    
#  end

#  def exit_message(filename)
#    # If file does not exist, give error message.
#    puts "Program exited because the file #{filename} does not exist."
#  end

#  def self.open(*params)
#    self.new(*params)        
#  end

class Mp3Info
  def initialize(filename)
    @filename = filename
  end
 
  def tags(args)    
    info_hash = {
           :title          => args[3..32].strip, 
           :artist         => args[33..62].strip, 
           :album_name    => args[63..92].strip, 
           :year           => args[93..96].strip,
           :comments       => args[97..124]
        }
  end

  def tag_info
    file = File.open(@filename)
    file.seek(-128, IO::SEEK_END)    
    args = file.read
    tags(args)
  end  
  
  def display
    puts <<-EOS
    Song title is "#{tag_info[:title]}"
    Song artist is "#{tag_info[:artist]}"
    Song album is "#{tag_info[:album_name]}"
    Song year is "#{tag_info[:year]}"
    Song comments are "#{tag_info[:comments]}"
    EOS
  end
end

#filename = "song.mp3"
begin
Mp3Info.new(ARGV[0]).display
rescue
puts "Enter name of mp3 file including extension Ex: song.mp3 "
filename = gets.chomp
Mp3Info.new(filename).display
end
#Mp3Info.new.display

#Mp3Info.new("BM_006_ABriefExplanation_eng.mp3").display
#Mp3Info.new.display
#puts "Song title is \"#{info.tag_info[:title]}\""
#puts "Song artist is \"#{info.tag_info[:artist]}\""
#puts "Song album is \"#{info.tag_info[:album_name]}\""
#puts "Song year is \"#{info.tag_info[:year]}\""
#puts "Song comments are \"#{info.tag_info[:comments]}\""
#puts @info
#args = @info.values_at("title", "artist", "album", "year", "tracknum", "comments", "genre", "genre_s")

#newhash = {:title          => args[0], 
#           :artist         => args[1], 
#           :album_title    => args[2], 
#           :year           => args[3],
#           :tracknum       => args[4], 
#           :comments       => args[5],
#           :genre          => args[6],
#           :genre_s        => args[7]
#        }
#newhash.each do |item|
#  puts item
#end
#require 'id3lib'

#tag = ID3Lib::Tag.new('BM_006_ABriefExplanation_eng.mp3')
##tag.each do |frame|
##     puts frame
##   end
#puts tag.title
#puts tag.artist
#puts tag.album
#puts tag.year
#puts tag.tracknum
#puts tag.comments
#puts tag.genre
#puts tag.genre_s


