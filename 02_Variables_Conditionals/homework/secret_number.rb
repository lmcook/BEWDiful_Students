# things I don't understand
# why can the variable for guess be established outside the method but not for secret number?

# Secret Number Game
# guess a number between 1 and 10

# Introduction
# Welcome the player by name and explain the rules

puts "\nWelcome to the Secret Number Game!\nCreated by Lynn"
puts "And your name is?\n"

name = gets.chomp

puts "\nPleased to meet you #{name}. I'm sure you'll enjoy this thrilling game of skill. Here are the rules:\n\t1. you must guess the secret number, which, I'll give you a clue, is a number between 1 and 10,\n\tand,\n\t2. you only get three guesses, so choose wisely."

# The Game

# I set the secret number
secret_number = 7

# I ask for the first guess
puts "What's your first guess #{name}?"
guess1 = gets.to_i

# if the first guess is correct I congratulate the player and end the game
if guess1 == secret_number
	puts "Congratulations #{name}, you're a winner! The secret number was #{guess1}."
end

# if the first guess is incorrect I give the player a clue and ask them to take a 2nd guess
if guess1 > secret_number
	puts "Nope! #{guess1} is too high. Please try again, what's your second guess?"
end

if guess1 < secret_number
	puts "Nope! #{guess1} is too low. Please try again, what's your second guess?"
end
guess2 = gets.to_i

# if the second guess is correct I congratulate the player and end the game

if guess2 == secret_number
	puts "Congratulations #{name}! The secret number was #{guess2}."
end

# if the second guess is incorrect I give the player a clue and ask them to take a 3rd guess

if guess2 > secret_number
	puts "Nope! #{guess2} is too high. Please try again, what's your third and final guess?"
end

if guess2 < secret_number
	puts "Nope! #{guess2} is too low. Please try again, what's your third and final guess?"
end
guess3 = gets.to_i

# if the third guess is correct I congratulate the player and the game ends
# if the third guess is incorrect I commiserate with the player and the game ends

if guess3 == secret_number
	puts "Third time lucky! The secret number was indeed #{guess3}."
else
	puts "Sadly you didn't guess the secret number in this game. It was #{secret_number}. You could always play again."
end










