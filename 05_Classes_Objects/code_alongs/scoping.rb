class Greeter
	@@global_greeting = "Howdy"
	@@student = "Student"

	def initialize(greeting=nil)
		@greeting = greeting || @@global_greeting
	end

	def greet(name=nil)
		"#{@greeting} #{name || @@student}" 
	end
end

greeter = Greeter.new()
greeter2 = Greeter.new("welcome")

puts greeter.greet("Ben")
puts greeter.greet("Tanya")
puts greeter.greet("Kerem")
puts greeter.greet("Alex")
puts greeter.greet


puts greeter2.greet("Craig")
puts greeter2.greet("Lynn")