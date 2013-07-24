################################################################################
#
# Introduction to Ruby on Rails
#
# Code Along Loops
# Learning Objective: Introduce loops and create a reference for students.
#
################################################################################

# Data to be used in these exercises

months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

<<<<<<< HEAD
states = {
=======
provinces = {
>>>>>>> teacher/master
				"Australian Capital Territory" => "ACT",
				"New South Wales" => "NSW",
				"Northern Territory" => "NT",
				"Queensland" => "QLD",
				"South Australia" => "SA",
				"Tasmania" => "TAS",
				"Victoria" => "VIC",
				"Western Australia" => "WA"
			}


# 1. display each province, followed by its abbreviation, each on its own line
puts "\n--------------------" # line to distinguish exercise output

<<<<<<< HEAD
states.each {|key, value| puts "#{key} - #{value}"}
=======
>>>>>>> teacher/master

# 2. using the .each method, display the months in the second quarter of the year, in a single row
puts "\n--------------------" # line to distinguish exercise output

<<<<<<< HEAD
months[3..5].each do |month|
	print month, " "
end

=======
>>>>>>> teacher/master

# 3. display the current year, followed by the third quarter months, and the same for the next two years, as shown
# 
# 2012: July August September
# 2013: July August September
# 2014: July August September
#
# there are many different ways you could do this, but you will need to nest one loop inside another.
# for this exercise, do not use the .each method in either loop
puts "\n--------------------" # line to distinguish exercise output

<<<<<<< HEAD
year = 2013
month = months[6..8]
until year == 2016
	puts "#{year}: #{month}"
	year += 1
	
end
puts
year = 2013
until year == 2016
	print "#{year}: #{month}"
	year += 1	
end
puts
2013.upto(2015) do |month|
	print ": #{month}"
end
=======
>>>>>>> teacher/master
