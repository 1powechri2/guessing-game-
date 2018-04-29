require './lib/guessing_game'

puts "I have generated a random number
for you to guess, what is your guess?"

run_game = GuessingGame.new

run_game.player_answer

run_game.check_answer
