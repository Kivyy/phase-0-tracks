# module Shout 
# 	def self.yell_angrily(words)
# 		words + '!!!' + ' :C'
# 	end 

# 	def self.yell_happily(str)
# 		str + '!' + ' :)'
# 	end 
# end 


# Shout.yell_happily("hello world")
# Shout.yell_angrily("hello world")

module Shout 
	def yell_angrily(string)
		string + "!!!" + "OMG."
	end 
end 

class Person 
	include Shout 
end 

class Parents 
	include Shout
end 

person = Person.new 
person.yell_angrily("Go away")

mother = Parents.new 
mother.yell_angrily("Clean your room")