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
class Main

	def welcome()
	puts "\nWelcome to the Secret Number Game!\n\tCreated by Lynn\nI hope you enjoy this thrilling game of skill.\n\tThe Rules:\n1. you must guess the secret number, it's a number between 1 and 10,\n2. you only get three guesses, so choose wisely."
	end
end
#	Ask the player for their name and instantiate the Game class.
class Game
	
	def get_name
		puts "And your name is?\n"
		@name = gets.chomp
	end

	def put_name
		@name
	end

end
name = Game.new
name.get_name
puts "Good to meet you #{name.put_name}"


#
# Secret_Number
#   This class should initiate an array of numbers that range between 1 - 10.
#   Use a method from the array class to select a random element from that array. This random number will be the secret number. 
#   This way the secret number is also a secret to you.
#
class Secret_Number

	def generate
		@secret_number = 1 + rand(10)
	end

	def reveal
		@secret_number
	end
end

sn = Secret_Number.new
sn.generate
puts "The secret number is #{sn.reveal}."
puts "What was that again?"
puts "I said \"The secret number is #{sn.reveal}!\""
puts "Can you tell me a different secret number?"
puts "Okay"
sn.generate
puts "The new secret number is #{sn.reveal}."

# Player
#  Should initialize the player's name. 
#
class Player

end

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
# Tips: Copy paste your code from homework 1 where necessary. 