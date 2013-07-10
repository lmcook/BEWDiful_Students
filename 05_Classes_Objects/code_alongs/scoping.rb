class Greeter
<<<<<<< HEAD
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
=======
  GlobalGreeting = "Howdy"

  def self.global_greeting
    GlobalGreeting
  end


  def initialize(greeting=nil)
    @greeting = greeting || GlobalGreeting
  end
  
  
  def greet(name)
    "#{@greeting} #{name}"
  end
end

greeter = Greeter.new

# puts greeter.greet("Ben")
# puts greeter.greet("Tanya")
# puts greeter.greet("Kerem")

puts Greeter.global_greeting
# puts Greeter.greet
greeter.global_greeting
>>>>>>> teacher/master
