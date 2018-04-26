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

  def test_initialize_player_guess_equal_0
    assert @game.player_answer != 0
  end

  # The game waits for the gets after the test is
  # initiated, I type in 5 twice to get the above
  # and below unit tests to pass.

  def test_player_answer
    @game.player_answer
    assert @game.player_guess == 5
  end

  def test_check_answer
    assert @game.check_answer
  end

  # Test above opens the while loop amnd I'm not
  # sure how to get around that
end
