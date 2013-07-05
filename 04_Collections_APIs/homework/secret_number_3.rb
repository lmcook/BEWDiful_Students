# Secret Number Game v 3
# guess a number between 1 and 10
# for homework introduce methods, looping and arrays and/or hashes, and a random number into the program

# Introduction
# Welcome the player by name and explain the rules

def welcome
	puts "\nWelcome to the Secret Number Game!\n\tCreated by Lynn\nI hope you enjoy this thrilling game of skill.\n\tThe Rules:\n1. you must guess the secret number, it's a number between 1 and 10,\n2. you only get three guesses, so choose wisely."
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

# each player is allowed 3 guesses, make a number of turns method
turn = ["first", "second", "third and final"]

turn.each do |go|
		puts "What's your #{go} guess #{name}?"
		guess = gets.to_i
		if guess < 1 || guess > 10
			puts "Please choose a number between 1 and 10!"	
		elsif guess > secret_number
			puts "Nope! #{guess} is too high."
		elsif guess < secret_number
			puts "Sorry, #{guess} is too low."
		end
	
	if guess == secret_number
		puts "You are correct! The secret number is #{guess}!"
		break
	end
end
