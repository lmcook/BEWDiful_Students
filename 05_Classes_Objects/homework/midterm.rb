# Requirements
# take user input and handle bad input
# connect to a 3rd party api where the call varies based on the user's input
# object oriented, instantiate modeled classes in separate files
# push code on GitHub


# 2. display currently available story tags
# class to display story tags
# 3. ask user which tags they are interested in: individual, set or all
# class to communicate with user
# 4. display story info for selected tags
# class to display selected stories
# 5. ask user if they'd like to make a new selection, save their current selection to file, or quit
# class to communicate with user - same as before?

# 1. use digg api
# class to get digg feed

require 'httpi'
require 'json'

class GetDiggFeed
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

end

# print story tags to terminal

def print_digg_tags(stories)
	puts "These are the currently available story tags:"
	stories.each do |story|
		print_tags(story)
	end
	puts
end

# ask for user input

def user_select
	puts "Choose a tag!"
	choice = gets.chomp
	puts
end

# print stories to terminal

def print_digg_stories(stories)
	stories.each do |story|
		print_digg_story(story)
		puts "Tags: " + print_tags(story).to_s
		puts
		puts
	end
end

def print_digg_story(story)
	puts "Title: #{story["content"]["title"]}"
	puts "Author: #{story["content"]["author"]}" 
	puts "Description: #{story["content"]["description"]}"
	puts "Source: #{story["content"]["domain"]}"
	puts "URL: #{story["content"]["url"]}"
end

def print_tags(story)
	tag = story["content"]["tags"]
	tag.each do |x|
		# x["display"], " "
		print x["display"], " "
	end
end


raw_response = get_digg_feed
response = parse_digg_feed(raw_response)
print_digg_stories(response["data"]["feed"])
# print_digg_tags(response["data"]["feed"])
# user_select



