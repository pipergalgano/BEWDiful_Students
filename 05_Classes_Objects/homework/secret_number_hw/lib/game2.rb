class Game
	def initialize(player)
		@player = Player.name
		@secret_number = SecretNumber.new.number
    @guesses_left = 3
	end

  def show_rules
    puts "Okay #{@player}, so here are the rules:"
    puts "You must guess a number between one and ten"
    puts "You will only have three tries to get it right"
    puts
  end


  def try_again (next_guess)
    puts "Sorry, that's not it..."
    puts "You have #{@guesses_left} #{@guesses_left > 1 ? 'guesses' : 'guess'} left." if @guesses_left > 1
    puts "Guess #{next_guess}!" if @guesses_left > 0
    puts
  end

  def start
    show_rules

    while @guesses_left > 0
      puts "What's your guess?"
      guess = gets.strip.to_i

    if guess == @secret_number
      puts "YOU WON!"
      exit
    elsif guess > @secret_number
      @guesses_left -= 1
      start_game("lower")
    elsif guess < @secret_number
      @guesses_left -= 1 
      try_again("higher")
    end
  end

  puts "Game over. You didn't correctly guess the number. It was #{@secret_number}, duh."
  end
end






