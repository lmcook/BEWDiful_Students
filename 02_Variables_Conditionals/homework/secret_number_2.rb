# Secret Number Game v 2
# guess a number between 1 and 10
# for homework introduce methods, looping and arrays and/or hashes, and a random number into the program

# Introduction
# Welcome the player by name and explain the rules

def welcome
	puts "\nWelcome to the Secret Number Game!\nCreated by Lynn\nI'm sure you'll enjoy this thrilling game of skill. Here are the rules:\n1. you must guess the secret number, which, I'll give you a clue, is a number between 1 and 10,\n2. you only get three guesses, so choose wisely."
end

def get_name
	puts "And your name is?\n"
	name = gets.chomp
end

welcome
name = get_name

# The Game
# generating a random secret number between 1 and 10

secret_number = rand(1..10)

# each player is allowed 3 guesses so count is set to 3
count = 3
# while the count is greater than zero the player is asked for a guess, unless they've already guessed correctly
while count > 0
	if count == 3
		ordinal = "first"
	elsif count == 2
		ordinal = "second"
	elsif count == 1
		ordinal = "third and last"	
	end
	puts "What's your #{ordinal} guess #{name}?"
	guess = gets.to_i
		if guess < 1 || guess > 10
			puts "Please choose a number between 1 and 10!"	
		elsif guess == secret_number
			count = 0
			puts "You are correct! The secret number is #{guess}!\n"
		elsif guess > secret_number
			puts "Nope! #{guess} is too high."
		elsif guess < secret_number
			puts "Sorry, #{guess} is too low."
		end
		count -= 1
		if count == 1
			puts "You have only #{count} guess left.\n"
		elsif count == 0
			puts "You have no guesses left. Better luck next time.\n"
		elsif count == -1
			puts "Play again soon!\n"
		else
		puts "You have #{count} guesses left.\n"
	end
end
				
	
