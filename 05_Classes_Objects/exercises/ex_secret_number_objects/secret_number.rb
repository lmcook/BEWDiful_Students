###############################################################################
#
# Introduction to Ruby on Rails
#
# Object Oriented Secret Number
#
# Read the links below and complete this file. This Lab
# is to practice your knowledge of object oriented programming. 
#
###############################################################################
# Lets create an Object Oriented version of our Secret Number Game.
#	
# Your updated game should have 4 classes (Main, Secret_Number, Game and Player)
#
# Below is a description of each class and some guidelines for each. 
#
# Main
#	The main class is where the game begins. This class should tell the player who made it.
#	Ask the player for their name and instantiate the Game class.
#
# Secret_Number
#   This class should initiate an array of numbers that range between 1 - 10.
#   Use a method from the array class to select a random element from that array. This random number will be the secret number. 
#   This way the secret number is also a secret to you.
#
# Player
#  Should initialize the player's name. 
#
# Game
#	This class holds most of the game logic and should:
#		Welcome players and inform them of the game rules.
#		Initialize the Player class.
# 		Initialize the Secret Number class.
# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low.
#		Monitor how many guesses the player has before the game is over.
#
# In creating your game, make sure it has arrays, hashes and all functionality is wrapped in methods.
# Add helpful comments to your code to document what each section does.
# 
<<<<<<< HEAD
# Tips: Copy paste your code from homework 1 where necessary. 

class Main
	# game begins here
	# tell player who made the game
	# ask the player for their name
	# instantiate the game class
	
	def main
	puts "\nThe Secret Number Game!\n\tCreated by Lynn\n"
	end

	def get_name
		puts "And your name is?"
		@name = gets.chomp
	end

	def start_game
		game = Game.new(@name)
	end
end

class Secret_Number

	def generate
		@secret_number = 1 + rand(10)
	end

	def reveal
		@secret_number
	end
end

class Player
	
	def player_name
		@name = get_name
	end
end

class Game
	# Welcome players and inform them of the game rules.
	# Initialize the Player class.
	# Initialize the Secret Number class.
	# Prompt the user to choose a number, verify if the user guessed correctly.
	# If the user guesses incorrectly let them know if they were too high or too low.
	# Monitor how many guesses the player has before the game is over.

	def initialize(name, secret_number)
		@name = name
		@secret_number = Secret_Number.new(generate)
	end

	def welcome
		puts "#{@name} welcome to The Secret Number Game! I hope you enjoy this thrilling game of skill.\n\tThe Rules:\n1. you must guess the secret number, it's a number between 1 and 10,\n2. you only get three guesses, so choose wisely."	
	end

	def take_turn

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
	
end

first = Main.new
puts first.main
puts first.get_name
first.start_game.welcome
puts secret_number

#sn = Secret_Number.new
# sn.generate
# puts "The secret number is #{sn.reveal}."
# puts "What was that again?"
# puts "I said \"The secret number is #{sn.reveal}!\""
# puts "Can you tell me a different secret number?"
# puts "Okay"
# sn.generate
# puts "The new secret number is #{sn.reveal}."
=======
# Tips: Copy paste your code from homework 1 where necessary. 
>>>>>>> teacher/master
