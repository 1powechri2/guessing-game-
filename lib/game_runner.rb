require './lib/guessing_game'

puts "I have generated a random number\n
      for you to guess, what is your guess?"

# The above message prints out to the screen in strange way
# kind of like this:
# I have generated a random number
#
#         for you to guess, what is your guess?
# not sure how to fix that.

#
# "I have generated a random number\nfor you to guess, what is your guess?"
#
# That string will behave how you expect.  The reason that the puts is acting strange
# is because the puts is reading the spaces as separate characters in your string.
# Even though Ruby is white space sensitive, the string itself isnt.  It will interpret
# the new line (\n) as it is above, so you don't need the extra spaces.

run_it = GuessingGame.new
# This variable name is a little strange to me.  The way I think about methods are the methods are
# an action the object is doing and the variable/object is a thing doing the action.  The object
# made from a class is sort of a representation of a type of object (like a person is an instance of the people class)
# This is just a runner file, so I understand why you named it the way you did, though.
run_it.player_answer

run_it.check_answer
