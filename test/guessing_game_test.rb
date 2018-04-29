require './test/test_helper'
require './lib/guessing_game.rb'

class GuessingGameTest < Minitest::Test
  def setup
    @game = GuessingGame.new
  end

  def test_it_exists
    assert_instance_of GuessingGame, @game
  end

  def test_initialize_of_random_number
    refute @game.game_number == nil
    assert @game.game_number != 0
  end

  def test_game_number
    assert (1..100).include? @game.game_number
  end

  def test_initialize_player_guess_equal_0
    assert @game.player_answer != 0
  end

  # The game waits for the gets method to take input
  # after the test is initiated, I type in 5 twice
  # to get the above
  # and below unit tests to pass.

  def test_player_answer
    @game.player_answer
    assert @game.player_guess == '5'
  end

  # def test_check_answer
  #   check_answer_test = @game.check_answer
  #   refute check_answer_test
  # end

  # Test above opens the while loop and I'm not
  # sure how to get around that so I created the
  # test below to show the comparison logic
  # for the while loop works. This doesn't actually
  # test the method though and so I won't do it
  # for the compare_divisor and
  # compare_lesser_or_greater_than methods. 

  def test_while_loop_comparison_logic
    a = '5'
    b = 6
    assert a != b
  end
end
