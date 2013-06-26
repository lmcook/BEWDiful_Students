# Add to Teddit!
# We want users to be able to add stories from the command line

# Deliver this experience:
# 	Welcome the user to Teddit.
# 	Prompt for a story title.
# 	Wait for user input (bonus: Don't use gets.chomps)
# 	Ask the user to give the story a category. 
# 	Wait for a response. 
# 	Show the new story the user added.
# 	Look for repetition and add methods to keep code DRY. 

def get_input
	gets.chomp
end

puts "Welcome to Tedditt!"

puts "What's the title of your story?"
title = get_input

puts "And what category does your story fit in?"
category = get_input
votes = 1
puts "New story added! #{title}\nCategory: #{category}\nCurrent upvotes: #{votes}"


# Here is an example of what you should see in the terminal when you finish coding.
# 	Welcome to Teddit! A text based news aggregator. Get today's news tomorrow!"
# 	Please enter a news story:
# 	=> ***Waits for input*** 
# 	User enters: Bear feels remorse for stealing candy from baby
# 	Please give it a category:
# 	=> ***Waits for input***
# 	User enters: ecological
# 	New story added! Bear feels remorse for stealing candy from baby, Category: Ecological, Current Upvotes: 1

