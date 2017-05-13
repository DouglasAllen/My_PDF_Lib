# test_id3lib.rb

require 'id3lib'

# Load a tag from a file
tag = ID3Lib::Tag.new('song.mp3')

# Get and set text frames with convenience methods
puts tag.title  #=> "Talk"
puts tag.album
puts tag.track

# Tag is a subclass of Array and each frame is a Hash
tag[0]
#=> { :id => :TPE1, :textenc => 0, :text => "Coldplay" }

# Get the number of frames
tag.length  #=> 7

# Remove all comment frames
#tag.delete_if{ |frame| frame[:id] == :COMM }

# Get info about APIC frame to see which fields are allowed
ID3Lib::Info.frame(:APIC)
#=> [ 2, :APIC, "Attached picture",
#=>   [:textenc, :mimetype, :picturetype, :description, :data] ]

# Add an attached picture frame
#cover = {
#  :id          => :APIC,
#  :mimetype    => 'image/jpeg',
#  :picturetype => 3,
#  :description => 'A pretty picture',
#  :textenc     => 0,
#  :data        => File.read('cover.jpg')
#}
#tag << cover

# Last but not least, apply changes
#tag.update!
