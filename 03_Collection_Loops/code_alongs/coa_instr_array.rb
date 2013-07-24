# Create a new array and assign it to a variable
# Check its class
# Reiterate that a class tells you what things this object can respond to
# Create a staff array with the instructor and TAs names
# Show getting size with count, size, length, empty?
# Show reading from an array, zero indexing
# Show appending to the array, with push, << and unshift
# Show popping and shifting
# Show how include? works
# Show BANG Methods #sort!, #uniq!, #shuffle!, reverse! 
# Show join, to_s
# Show split from string
<<<<<<< HEAD

dogs = []
puts dogs.class
dogs.push "Malfi"
dogs.push "Dizzy"
dogs.push "Charlie"
dogs.push "Under"
puts dogs
# dogs.count returns the count of objects in enum that equal obj
# or for which the block returns a true value
# eg the number of dog names in dogs => 7
puts dogs.count
# eg the number of dogs named "Jazz" in dogs => 0
puts dogs.count("Jazz")
# eg the number of dogs with names longer than 5 characters
puts dogs.count {|name| name.length > 5}
# size is a synonym for length
# length returns the number of elements in enum
puts dogs.size
puts dogs.length
# returns true if enum array contains no elements
puts dogs.empty?

=======
>>>>>>> teacher/master
