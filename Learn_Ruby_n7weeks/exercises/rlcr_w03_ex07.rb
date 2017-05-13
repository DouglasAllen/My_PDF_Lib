# rlcr_w03_ex07.rb

=begin
Exercise7. First of all, I'd like to thank Peter Cooper for allowing me to use this exercise.

The application you're going to develop will be a text analyzer. You will be working on it this and next week. Your Ruby code will read in text supplied in a separate file, analyze it for various patterns and statistics, and print out the results for the user. It's not a 3D graphical adventure or a fancy Web site, but text processing programs are the bread and butter of systems administration and most application development. They can be vital for parsing log files and user-submitted text on Web sites, and manipulating other textual data. With this application you'll be focusing on implementing the features quickly, rather than developing an elaborate object-oriented structure, any documentation, or a testing methodology.

Your text analyzer will provide the following basic statistics:

Character count
Character count (excluding spaces)
Line count
Word count
Sentence count
Paragraph count
Average number of words per sentence
Average number of sentences per paragraph
In the last two cases, the statistics are easily calculated from the word count, sentence count, and paragraph count. That is, once you have the total number of words and the total number of sentences, it becomes a matter of a simple division to work out the average number of words per sentence.

Before you start to code, the first step is to get some test data that your analyzer can process. You can find the text at:
http://rubylearning.com/data/text.txt

Save the file in the same folder as your other Ruby programs and call it text.txt. Your application will read from text.txt by default (although you'll make it more dynamic and able to accept other sources of data later on).

Let me outline the basic steps you need to follow:

Load in a file containing the text or document you want to analyze.
As you load the file line by line, keep a count of how many lines there are (one of your statistics taken care of).
Put the text into a string and measure its length to get your character count.
Temporarily remove all whitespace and measure the length of the resulting string to get the character count excluding spaces.
Split on whitespace to find out how many words there are.
Split on full stops (.), '!' and '?' to find out how many sentences there are.
Split on double newlines to find out how many paragraphs there are.
Perform calculations to work out the averages.
Create a new, blank Ruby source file and save it as analyzer.rb in your Ruby folder. 

=end

#def analyze_text_file(filename)
#  # Verify that filename exist
#  unless File.exist?(filename)
#  # If file does not exist, give error message.
#    puts "Fatal Error: The file #{filename} does not exist."
#    exit 0
#  end
  
#  lines = File.readlines(filename)
#  no_of_lines = lines.size
#  text = lines.join
#  no_of_characters = text.length
#  no_of_characters_nospaces = text.gsub(/\s+/, '').length
#  no_of_words = text.split.length
#  no_of_paragraphs = text.split(/\n\n/).length
#  no_of_sentences = text.split(/\.|\?|!/).length
# 
#  puts "There are #{no_of_lines} lines"
#  puts "There are #{no_of_characters} characters"
#  puts "There are #{no_of_characters_nospaces} characters (excluding spaces)"
#  puts "There are #{no_of_words} words"
#  puts "There are #{no_of_paragraphs} paragraphs"
#  puts "There are #{no_of_sentences} sentences"
#  puts "There are on average #{no_of_sentences / no_of_paragraphs} sentences per paragraph"
#  puts "There are on average #{no_of_words / no_of_sentences} words per sentence"
#end
# 
#puts "Enter filename to analyze: "
#filename = gets.chomp
#analyze_text_file(filename)

#=begin
# 
#  Lesson 4 Exercise 8
#  Scott C Pettigrew
#  Goal: Text Analyzer Program
#  
#=end
# 
#def char_count(in_string)
#  in_string.length
#end
# 
#def char_count_without_spaces(in_string)
#  length = 0
#  in_string.split.each do |word|
#    length += word.length
#  end
#  length
#end
# 
#def word_count(in_string)
#  in_string.split.length
#end
# 
#def sentence_count(in_string)
#  in_string.split(/\.|\?|\!/).length
#end
# 
#def paragraph_count(in_string)
#  in_string.split("\n\n").length
#end
# 
#filename = "text.txt"
#lines = IO.readlines(filename)
# 
#num_lines = lines.length
# 
#file_string = lines.to_s
# 
#puts "Character Count: #{ num_chars = char_count(file_string)}"
#puts "Character count (excluding spaces): #{num_chars_without_whitespace = char_count_without_spaces(file_string)}"
#puts "Line count: #{num_lines}"
#puts "Word count: #{num_words = word_count(file_string)}"
#puts "Sentence count: #{num_sentences = sentence_count(file_string)}"
#puts "Paragraph count: #{num_paragraphs = paragraph_count(file_string)}"
# 
#puts "Avg # of words per sentence: #{num_words / num_sentences.to_f}"
#puts "Avg # of sentences per paragraph: #{num_sentences / num_paragraphs.to_f}"

puts "Enter filename to analyze: "
filename = gets.chomp
unless File.exist?(filename)
  # If file does not exist, give error message.
   puts "Program exited because the file #{filename} does not exist."
  exit 0
end
def analyze_text(lines)
    @line_count = lines.size
    @text = lines.join
    @total_characters = @text.length
    @total_characters_nospaces = @text.gsub(/\s+/, '').length
    @word_count = @text.split.length
    @sentence_count = @text.split(/\.|\?|!/).length
    @paragraph_count = @text.split(/\n\n/).length
end
lines = File.readlines(filename)
analyze_text(lines)
#text = "First-class decisions require clear-headed thinking."
#puts "Scan method: #{text.scan(/\w+/).length}"
#puts "Split method: #{text.split.length}"
#puts "#{filename} has #{total_characters} characters"
#puts "#{filename} has #{total_characters_nospaces} characters excluding spaces"
#puts "#{filename} has #{line_count} lines"
#puts "#{filename} has #{word_count} words"
#puts "#{filename} has #{sentence_count} sentences"
#puts "#{filename} has #{paragraph_count} paragraphs"
#puts "#{filename} has #{sentence_count / paragraph_count} sentences per paragraph (average)"
#puts "#{filename} has #{word_count / sentence_count} words per sentence (average)"
puts <<-EOS
#{filename} has #{@total_characters} characters
             #{@total_characters_nospaces} characters excluding spaces
             #{@line_count} lines
             #{@word_count} words
             #{@sentence_count} sentences
             #{@paragraph_count} paragraphs
             #{@sentence_count / @paragraph_count} sentences average per paragraph
             #{@word_count / @sentence_count} words average per sentence
EOS

 
# # analyzer.rb -- Text Analyzer
#stopwords = %w{the a by on for of are with just but and to the my I has some in}
#lines = File.readlines(ARGV[0])
#line_count = lines.size
#text = lines.join
## Count the characters
#character_count = text.length
#character_count_nospaces = text.gsub(/\s+/, '').length
## Count the words, sentences, and paragraphs
#word_count = text.split.length
#sentence_count = text.split(/\.|\?|!/).length
#paragraph_count = text.split(/\n\n/).length
## Make a list of words in the text that aren't stop words,
## count them, and work out the percentage of non-stop words
## against all words
#all_words = text.scan(/\w+/)
#good_words = all_words.select{ |word| !stopwords.include?(word) }
#good_percentage = ((good_words.length.to_f / all_words.length.to_f) * 100).to_i
## Summarize the text by cherry picking some choice sentences
#sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
#sentences_sorted = sentences.sort_by { |sentence| sentence.length }
#one_third = sentences_sorted.length / 3
#ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
#ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /is|are/ }
## Give the analysis back to the user
#puts "#{line_count} lines"
#puts "#{character_count} characters"
#puts "#{character_count_nospaces} characters (excluding spaces)"
#puts "#{word_count} words"
#puts "#{sentence_count} sentences"
#puts "#{paragraph_count} paragraphs"
#puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"

