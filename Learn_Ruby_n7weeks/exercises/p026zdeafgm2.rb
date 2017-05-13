# p026zdeafgm2.rb

#def talk_to_granny(sonny_speaks)
#    sonny_speaks == sonny_speaks.upcase ?
#    puts "NO, NOT SINCE #{rand(21) + 1930}!" :
#    puts 'HUH?! SPEAK UP, SONNY!'
#end

#def clear_byes(bye)
#    if bye != 'BYE'
#      @say1, @say2, @say3 = ''
#    end
#end

#def get_line
#  say = gets.chomp
#  if say.empty? or say != 'BYE' then
#    say
#  end  
#end

#clear_byes('')
#until @say1 == 'BYE' || @say2 == 'BYE' || @say3 == 'BYE'
#  puts 'Say something to Granny.'
#        @say1 = get_line        
#        talk_to_granny(@say1)
#        @say2 = get_line
#        talk_to_granny(@say2)     
#        @say3 = get_line
#        talk_to_granny(@say3)
#end

#years = (1930..1950).to_a
count = 0
until count == 3
  print 'Say something to Granny: '
  resp = gets.chomp
  if resp != ''
    if resp == 'BYE'
      puts 'Granny pretends not to hear you.'
      count += 1 unless resp != 'BYE'
    elsif resp == resp.upcase
      puts "NO, NOT SINCE #{rand(21) + 1930}"
      count = 0
    else
      puts "HUH?! SPEAK UP, SONNY!"
      count = 0
    end
  end
end
