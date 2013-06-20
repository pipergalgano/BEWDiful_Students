#variables for game with comments. Variables are based upon the random number and counts I researched to inform users about the # of guesses they had left
toolow = 'YOUR GUESS WAS A LITTLE TOO LOW!'
toohigh = 'YOUR GUESS WAS TOO HIGH!!!!'
Maximum = 10
guesses = 3
count = 0
#couldn't figure this assignment out without a loop
win = false
#welcoming the user with their name
puts "Welcome to my really cool game called 'PICK A NUMBER!'' My name is Piper, and I made this game (after several attempts may i add). What's your name?"
name= (gets.chomp)
puts "Hey #{name}! So here's the story morning glory, the rules of the game are that you have to guess a NUMBER between 1 and #{Maximum}.You have #{guesses} attempts to do it. NOW LET'S GET CRACKIN'!!!!!"

random = rand(10) + 1
#needed to include the counts less the guesses to make this work and to also inform the user as to what they had left. (isn't proper grammer when they have one guess left?)
while ((count < guesses) && (not win))
	puts "Pick a number! You have #{guesses - count} guesses left!"
	guess = gets()
	guess = guess.to_i
	if random == guess
		win = true
	else
		if random < guess
			#used phrases from above
			puts toohigh
		else
			puts toolow
		end
	end

	count = count + 1
end

if win
	puts "CONGRATULATIONS!!!!! You got the random number: #{random}"
else
	puts "Sorry! Game over :( the answer was #{random}"
end