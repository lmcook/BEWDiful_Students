# method to check for equality
def assert_equal(expected, actual)
  raise "Expected #{expected} to match #{actual}" unless expected == actual
end

# Write a program that prints the numbers from 1 to 100. 
# But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. 
# For numbers which are multiples of both three and five print “FizzBuzz”.
#
# Your code here

<<<<<<< HEAD
def fizzbuzz (num)
	if num%3 == 0 && num%5 == 0
		return "FizzBuzz"
	elsif num%5 == 0
		return "Buzz"
		elsif num%3 == 0
		return "Fizz"
			else
	return num
end
end
=======
>>>>>>> teacher/master

# Tests
assert_equal fizzbuzz(1), 1
assert_equal fizzbuzz(3), "Fizz"
assert_equal fizzbuzz(4), 4
assert_equal fizzbuzz(50), "Buzz"
assert_equal fizzbuzz(15), "FizzBuzz"
assert_equal fizzbuzz(5175), "FizzBuzz"

# uncomment this code when your tests pass
<<<<<<< HEAD
1.upto(100) do |number|
  puts fizzbuzz(number)
end
=======
#1.upto(100) do |number|
#  puts fizzbuzz(number)
#end
>>>>>>> teacher/master
