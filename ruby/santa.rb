
#Release 0 
#add a santa class with three method. 
#eat_milk_and cookie method will pass on an argument and print out the string.

#Release 1 
#adding instance variables to initialize method. Gender and ethnicity will require arguments. Ranking and age will have default value.

class Santa 

	def initialize(gender,ethnicity)
		puts "Initalizing Santa instance..."
		@gender = gender 
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0 
	end 

	def speak 
		puts "Ho, ho, ho! Haaaapy Holidays!"
	end 

	def eat_milk_and_cookie(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

	def celebrate_birthday
		santa_current_age = @age + 1 
		puts "This santa is currently #{santa_current_age} years old. "
	end 

#take an name as argument and move to the last position of the ranking array.
#we are inserting the name to the last index of the ranking array and use the same string/name to find the index of the same name array and delete it with delete_at.
	def get_mad_at(reindeer_name)
		@reindeer_ranking = reindeer_ranking.insert(-1 , reindeer_ranking.delete_at(reindeer_ranking.index(reindeer_name)))
	end 

#setter method 
	def gender=(new_gender)
		@gender = new_gender
	end 

#getter method 
	def age 
		@age 
	end 

	def ethnicity 
		@ethnicity
	end 

end 

santas = []

#First we have to create two array for gender and ethnicity.
sant_genders = ["agender", "female", "bigender", "male", "female", "gender fluid","transgender"]
sant_ethnicities = ["black", "Latino", "white", "Asian", "prefer not to say", "Mystical Creature (unicorn)", "I can be whatever"]
# We will have to push these elements from the array to the empty santa array.
# add random elements of the array to the new empty santa arry by using sampl method.

sant_genders.length.times do |i|
	santas << Santa.new(sant_genders.sample, sant_ethnicities.sample)
end 

p santas 


