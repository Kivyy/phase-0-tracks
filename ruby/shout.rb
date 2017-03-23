module Shout 
	def self.yell_angrily(words)
		words + '!!!' + ' :C'
	end 

	def self.yell_happily(str)
		str + '!' + ' :)'
	end 
end 


Shout.yell_happily("hello world")
Shout.yell_angrily("hello world")