def talk_to_granny(sonny_speaks)
    sonny_speaks != "" and
    sonny_speaks != 'BYE' and
    sonny_speaks != 'BYEBYEBYE' and 
    sonny_speaks != 'BYE BYE BYE' and
    sonny_speaks == sonny_speaks.upcase ? (puts granny_hears) : (puts granny_going_def) 
end

def granny_hears
    random_years = rand(21) + 1930
    'NO, NOT SINCE ' + random_years.to_s + '!'
end

def granny_going_def
    'HUH?! SPEAK UP, SONNY!'
end

def clear_byes(bye)
    if bye != 'BYE'
    @say1, @say2, @say3 = ''
    end
end

clear_byes('')
while @say1 != 'BYE' || @say2 != 'BYE' || @say3 != 'BYE'
  while @say1 != 'BYE'
        @say1 = gets.chomp
        talk_to_granny(@say1)
        clear_byes(@say1)
  end
  while @say2 != 'BYE'
        @say2 = gets.chomp
        talk_to_granny(@say2)     
        clear_byes(@say2)
  end
  while @say3 != 'BYE'
        @say3 = gets.chomp
        talk_to_granny(@say3)
        clear_byes(@say3)
  end 
end 
