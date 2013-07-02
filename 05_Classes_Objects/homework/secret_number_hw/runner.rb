require_relative 'lib/game2.rb' #creates a link to the Story class.
require_relative 'lib/secret_number.rb' #creates a link to the StoryBoard class.
require_relative 'lib/player.rb' #creates a link to RemoteSource class


puts "Welcome to the secret number game!"
puts "This game was created by Piper"
puts

puts "What's your name?"
name = gets.strip.capitalize

player = Player.new(name)
game = Game.new(player)
game.start
