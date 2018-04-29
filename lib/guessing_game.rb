class GuessingGame

    attr_reader :game_number,
                :player_guess

  def initialize
    @game_number  = rand(1..100) + 1
    @player_guess = 0
  end

  def player_answer
    @player_guess = gets.chomp
    if @player_guess == 'c'
      puts "#{@game_number}"
    end
  end


  def check_answer
    while @player_guess.to_i != @game_number
      compare_lesser_or_greater_than
      compare_divisor
      puts "guess again"
      player_answer
    end
    puts "You have guessed the correct number!"
  end

  def compare_divisor
    if @game_number % 2 == 0
      puts "and the correct answer is even"
    else
      puts "and the correct answer is odd"
    end
  end

  def compare_lesser_or_greater_than
    if @player_guess.to_i < @game_number
      puts "your answer is less than the right answer"
    else
      puts "your answer is more than the right answer"
    end
  end
end
