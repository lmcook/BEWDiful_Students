# Requirements
# take user input and handle bad input
# connect to a 3rd party api where the call varies based on the user's input
# object oriented, instantiate modeled classes in separate files
# push code on GitHub

# use digg api to display custom list of stories
# specify particular tags that the user can ask for
# user can ask for most recent, highest ranking, or for a particular tag

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

# print stories to terminal

def print_digg_stories(stories)
	stories.each do |story|
		print_digg_story(story)
		print_tags(story)
		puts
	end
end

def print_digg_story(story)
	puts "Title: #{story["content"]["title"]}"
	puts "Description: #{story["content"]["description"]}"
	puts "Votes: #{story["digg_score"]}"
end

def print_tags(story)
	tag = story["content"]["tags"]
	puts "Category: #{tag[0]["display"]}"

	tag.each {|x| print x["display"], " - " }

	# if tag[1]["display"] == nil
	# 	puts "There is only one tag for this story."
	# elsif tag[1]["display"] != nil
	# 	puts "Category: #{tag[1]["display"]}"
	# 	puts "There is only one tag for this story."
	# end

end

raw_response = get_digg_feed
response = parse_digg_feed(raw_response)
print_digg_stories(response["data"]["feed"])



