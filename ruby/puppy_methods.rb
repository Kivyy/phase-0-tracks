class Puppy

  def initialize
  	puts "Initializing new puppy instance."
  end 

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(barkcounts)
    bark_length = barkcounts.to_i 
    bark_length.times do |bark|
      puts "Woof!"
    end
  end
  
  def roll_over(roll)
    print "*rolls over*"
  end 
  
  def dog_years(age)
    dog_age = age.to_i 
    human_year = dog_age * 7 
  end

  def sit
  	puts "*dog sat down*"
  end 
  
end


dog = Puppy.new
dog.fetch("bone")
dog.speak(6)
dog.roll_over("roll")
dog.dog_years(3)
dog.sit 

#Relase 2 

class Gymnast 

	def initialize
		puts "Initializing new instance."
	end 

	def flip(num)
		puts "Gymanst has flipped #{num} times"
	end 

	def jump
		puts "Gymnast has jumped." 
	end 

	def age
		gym_age = rand(12..27)
		puts "This gymnast is #{gym_age} years old."
	end 
end 

# Ask the user for amount of Gmynasts he wants to create
puts "How many gymnasts do you want to create?"
gymnast_amount = gets.chomp.to_i 
# Convert the amount to an integer
# Use a "times" loop to produce the instance of the class.

# gymanst = Gymnast.new

gymnast_amount.times do |gym_num|
	gymnast = Gymnast.new 
	gymnast.age 
	gymnast.flip(rand(20))
end 