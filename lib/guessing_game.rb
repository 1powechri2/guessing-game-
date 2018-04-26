class GuessingGame

    attr_reader :game_number,
                :player_guess

  def initialize
    @game_number  = rand(1..100) + 1
    @player_guess = 0
  end

    puts "I have generated a random number for you to guess, what is your guess?"

  def player_answer
    @player_guess = gets.chomp
  end

  def check_answer
    while @player_guess != @game_number
      puts "guess again"

    end
  end
end
