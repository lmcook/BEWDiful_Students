# Use your completed version from Teddit strings. 
# Or Copy the code from the strings_exercise_SN_solution.rb
#
# New Teddit Feature! If the Story is about cats multiply the upvotes by 5
# If the Story is about bacon multiply the upvotes by 8
# If the Story is about Food it gets 3 times the upvotes.

#For example:
# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!

def welcome_user
	puts "Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!\nWhat's your story?"	
end


def calculate_votes(title)
	if title.include? "cats"
		votes = 1*5
	elsif title.include? "bacon"
		votes = 1*8
	elsif title.include? "food"
		votes = 1*3
	else
		votes = 1
	end
end


def print_story(title, votes)
	puts "#{title}\nCurrent upvotes: #{calculate_votes(title)}"
end

welcome_user
title = gets.chomp.downcase
print_story(title.capitalize, 0)
