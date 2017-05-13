# gameboard.rb

class GameBoard  
  
  def set_locations_cells(locations)
    @locations = locations
    @result = ''
    @no_of_hits = 0
    @guesses = []
  end
  
  def check_yourself(user_guess)
    
    # check for guesses already made.
    @guesses.include?(user_guess.to_i) ? 
    @result = "Miss" : 
    get_result(user_guess)      
    @guesses << user_guess.to_i
    # any results gets checked and displayed
#    increment_hits(@result)
    @result == 'Hit' ? @no_of_hits += 1 : nil 
    display_result(@result)
    # clear result string
    @result = '' 
    if @no_of_hits == 3
      display_result('End')
      'kill'
    end        
  end
  
  def get_result(user_guess)
    @locations.include?(user_guess.to_i) ? 
    @result = 'Hit' : 
    @result = 'Miss'
  end
#  def increment_hits(result)
#    result == 'Hit' ? no_of_hits +=1 : nil    
#  end

  def display_result(result)
    puts result
  end

end



