# Requirements
# take user input and handle bad input
# connect to a 3rd party api where the call varies based on the user's input
# object oriented, instantiate modeled classes in separate files
# push code on GitHub

# 1. use dig api
# 2. get story tags and put them in an array
# 3. present the array of current story tags to the user
# 4. ask the user to select a tag they're interested in
# 5. get stories for selected tags
# 6. display story info for selected tags
# 7. ask user if they'd like to make a new selection, save their current selection to file, or quit

# 1. use digg api

require 'httpi'
require 'json'

# get json from digg

def get_digg_feed
	request = HTTPI::Request.new
	request.url = "http://digg.com/api/news/popular.json"
	HTTPI.get(request).body	
end

# parse json to hash

def parse_digg_feed(raw_response)
	JSON.parse(raw_response)
end

# 2. get story tags and put them in an array, 

def get_tags(stories)
	current_tags = []
	stories.each do |story|
		current_tags.push(story["content"]["tags"].first["slug"])
		# this code is to get ALL of the current tags, not just the primary tag
		# tag = story["content"]["tags"]
	 	# 	tag.each do |x|
	 	# 		current_tags.push(x["slug"])
	end
	current_tags.uniq!
	current_tags.sort!

#3. display currently available story tags
	puts
	puts "These are the currently available story tags:"
	puts current_tags
	puts
end

# 4. ask user which tag they are interested in: individual, set or all

def user_select(story)
	puts "Choose a tag!"
	choice = gets.chomp
	puts
	# if the user enters a tag from the list, find the associated stories and display them
	# if the user enters an invalid choice ask them to choose again
	
### this is where I got stuck ...
	if choice == "#{story["content"]["tags"].first["slug"]}"
		puts "Title: #{story["content"]["title"]}"
	else
		puts "Please choose a tag in the list."
	end
	puts
end

# 5. get stories
# 6. display stories
# 7. ask user if they'd like to save current selection, make a new selection or quit

# def print_digg_story(story)
# 	puts "Title: #{story["content"]["title"]}"
# 	puts "Author: #{story["content"]["author"]}" 
# 	puts "Description: #{story["content"]["description"]}"
# 	puts "Source: #{story["content"]["domain"]}"
# 	puts "URL: #{story["content"]["url"]}"
# 	puts "Tag: #{story["content"]["tags"].first["slug"]}"
# end

raw_response = get_digg_feed
response = parse_digg_feed(raw_response)

get_tags(response["data"]["feed"])
user_select(response["data"]["feed"])
# print_digg_stories(response["data"]["feed"])


# def print_tags(story)
# 	tag = story["content"]["tags"]
# 	tag.each do |x|
# 		print x["display"], " "
# 	end
# end

# print stories to terminal

# def print_digg_stories(stories)
# 	stories.each do |story|
# 		print_digg_story(story)
# 		puts "Tags: " + print_tags(story).to_s
# 		puts
# 		puts
# 	end
# end


# print_digg_tags(response["data"]["feed"])





