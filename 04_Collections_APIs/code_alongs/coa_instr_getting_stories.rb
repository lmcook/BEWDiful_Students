# Get a feed of the stories from reddit and print them to STDOUT

require 'httpi'
require 'json'

# digg.com/api/news/

# 1. get json from reddit
def get_reddit_feed
	request = HTTPI::Request.new
	request.url = "http://www.reddit.com/.json"
	HTTPI.get(request).body
end

# 1. get json from mashable
def get_mashable_feed
	request = HTTPI::Request.new
	request.url = "http://mashable.com/stories.json"
	HTTPI.get(request).body
end

# 2. parse json to hash
def parse_reddit_feed(raw_response)
	JSON.parse(raw_response)
end

def parse_mashable_feed(raw_response)
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
	print_mashable
	print_story(story["new"])
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

raw_response = get_reddit_feed
response = parse_reddit_feed(raw_response)
print_reddit_stories(response["data"]["children"])

raw_response = get_mashable_feed
response = parse_mashable_feed(raw_response)
print_mashable_stories(response["new"])

def normalize_reddit_feed(response)
	response[].map do |story|
	{
	:source => "Reddit"
	:title => story [""]
	:category => story [""]
	:votes => story [""]
}
end

def normalize_mashable_feed(response)
	response["new"].map do |story|
	{
	:source => "Mashable"
	:title => story ["title"]
	:category => story ["shares"]["total"]
	:votes => story ["channel"]
}
end

def normalize_digg_feed(response)
	response["data"]["feed"].map do |story|
	{
	:source => "Digg"
	:title => story ["content"]["title"]
	:category => story["contents"]["tags"].first["display"]
	:votes => story["digg_score"]
}
end

response = parse_feed "http://digg.com/api/news/popular.json"
stories = normalize_digg_feed
print_stories stories





