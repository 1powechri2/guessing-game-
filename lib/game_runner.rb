require './lib/guessing_game'

puts "I have generated a random number\n
      for you to guess, what is your guess?"

run_it = GuessingGame.new

run_it.player_answer

run_it.check_answer
