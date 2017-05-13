#Exercise3: Here are the program specifications for a simple game to be played against the computer.

#a. This game is played at the command-line.
#b. The game starts when the computer selects three consecutive cells in a 7 cell row (from 0 to 6). 
#   When that's complete, the game asks for your first guess.
#c. Guess the computer's selected cells in the smallest number of guesses. 
#   You are given a rating or level, based on how well you perform.
#d. At the command line, the user types in a number from 0 to 6. 
#   The computer checks if it's one of the selected cells. 
#   If it's a hit, increment the no_of_hits variable. 
#   In response to your guess, you'll see a result at the command-line: either "Hit", "Miss" or "End".
#e. When you have guessed all three cells, the game ends by printing out your rating (your number of guesses).

#Note:
#a. Use only the features we have learned so far, in Ruby.
#b. You must design the GameBoard class.
#c. The testgameboard.rb program uses your GameBoard class

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
    increment_hits(@result) 
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
  def increment_hits(result)
    result == 'Hit' ? @no_of_hits += 1 : nil    
  end

  def display_result(result)
    puts result
  end

end



