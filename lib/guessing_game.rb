class GuessingGame

    attr_reader :game_number,
                :player_guess

  def initialize
    @game_number  = rand(1..100) + 1
    @player_guess = 0
  end


  def player_answer
    @player_guess = gets.chomp.to_i
  end

  def compare_lesser_or_greater_than
    if @player_guess < @game_number
      puts "you answer is less than the right answer"
    else
      puts "you answer is more than the right answer"
    end
  end

  def check_answer
    while @player_guess != @game_number
      compare_lesser_or_greater_than
      puts "guess again"
      player_answer
    end
  end
end
