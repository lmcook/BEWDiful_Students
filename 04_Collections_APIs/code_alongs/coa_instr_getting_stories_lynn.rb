# Get a feed of the stories from reddit and print them to STDOUT

require 'httpi'
require 'json'

# digg.com/api/news/
# 1. get json
# from reddit
def get_reddit_feed
	request = HTTPI::Request.new
	request.url = "http://www.reddit.com/.json"
	HTTPI.get(request).body
end

# from mashable
def get_mashable_feed
	request = HTTPI::Request.new
	request.url = "http://mashable.com/stories.json"
	HTTPI.get(request).body
end

# from digg
def get_digg_feed
	request = HTTPI::Request.new
	request.url = "http://digg.com/api/news/popular.json"
	HTTPI.get(request).body	
end

# 2. parse json to hash
def parse_reddit_feed(raw_response)
	JSON.parse(raw_response)
end

def parse_mashable_feed(raw_response)
	JSON.parse(raw_response)
end

def parse_digg_feed(raw_response)
	JSON.parse(raw_response)
end

# 3. print stories to a terminal
def print_reddit_stories(stories)
	stories.each do |story|
		print_reddit_story(story["data"])
	end
end

def print_mashable_stories(stories)
	stories.each do |story|
		print_mashable_story(story)
	end
end

def print_digg_stories(stories)
	stories.each do |story|
		print_digg_story(story)
	end
end

def print_reddit_story(story)
	puts "Title: #{story["title"]}"
	puts "Category: #{story["subreddit"]}"
	puts "Votes: #{story["score"]}"
	puts	
end

def print_mashable_story(story)
	puts "Title: #{story["title"]}"
	puts "Category: #{story["channel"]}"
	puts "Votes: #{story["shares"]}"
	puts
end

def print_digg_story(story)
	puts "Title: #{story["content"]["title"]}"
	puts "Category: #{story["content"]["tags"].first["display"]}"
	puts "Votes: #{story["digg_score"]}"
	puts
end

raw_response = get_reddit_feed
response = parse_reddit_feed(raw_response)
print_reddit_stories(response["data"]["children"])

raw_response = get_mashable_feed
response = parse_mashable_feed(raw_response)
print_mashable_stories(response["new"])

raw_response = get_digg_feed
response = parse_digg_feed(raw_response)
print_digg_stories(response["data"]["feed"])
