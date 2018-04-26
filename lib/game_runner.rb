require './lib/guessing_game'

puts "I have generated a random number\n
      for you to guess, what is your guess?"

# The above message prints out to the screen in strange way
# kind of like this:
# I have generated a random number
#
#         for you to guess, what is your guess?
# not sure how to fix that.

run_it = GuessingGame.new

run_it.player_answer

run_it.check_answer
