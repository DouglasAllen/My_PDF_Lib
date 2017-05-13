# rlcr_w06_ex04.rb
#require 'bigdecimal'
class TextAnalyzer
  
  def initialize(filename = '')

    if filename != ''
      unless File.exist?(filename)
         raise LoadError, "Program exited because the file #{filename} does not exist."
      end            
    end

    if filename == ''      
      entry_message
      filename = gets.chomp
      unless File.exist?(filename)
         raise LoadError, "Program exited because the file #{filename} does not exist."
      end       
    end
    
    @filename = filename
  end 
  
  def entry_message
    puts "Enter name of the text file to analyze. EX: text.txt "
  end  

  def analyze_text(lines)      
    @line_count = lines.size
    @text = lines.join
    @total_characters = @text.length
    @total_characters_nospaces = @text.gsub(/\s+/, '').length
    @word_count = @text.split.length
    @sentence_count = @text.split(/\.|\?|!/).length
    @paragraph_count = @text.split(/\n\r/).length
  end

  def display
    lines = open(@filename, "r").readlines
    analyze_text(lines)
    puts <<-EOS
      file #{@filename} has: 
             #{@total_characters} characters
             #{@total_characters_nospaces} characters excluding spaces
             #{@line_count} lines
             #{@word_count} words
             #{@sentence_count} sentences
             #{@paragraph_count} paragraphs
             #{(@sentence_count * 1.0 / @paragraph_count).round(5)} sentences average per paragraph
             #{(@word_count * 1.0 / @sentence_count).round(5)} words average per sentence
    EOS
  end  
end

#TextAnalyzer.new.display
TextAnalyzer.new.display



