# rlcr_w06_ex05.rb

def save_game(file)
 score = 1000
 open(file, "w") do |f|
 f.puts(score)
 f.puts(Time.new.to_i)
 end
end

def load_game(file)
  open(file, "r") do |f|
    score, time = f.readlines[0..1]
    if time.to_i.eql?(f.ctime.to_i)      
      puts "Your saved score is #{score}"
    else      
      fail 'I suspect you of cheating.'
    end      
  end 
end

save_game("game.sav")
sleep(2)
load_game("game.sav")
open("game.sav", "r+b") { |f| f.write("9") }
load_game("game.sav")
