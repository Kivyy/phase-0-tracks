
#Release 0 
#add a santa class with three method. 
#eat_milk_and cookie method will pass on an argument and print out the string.

#Release 1 
#adding instance variables to initialize method. Gender and ethnicity will require arguments. Ranking and age will have default value.

class Santa 
	attr_accessor :gender, :age, :ethnicity 

	def initialize(gender,ethnicity)
		puts "Initalizing Santa instance..."
		@gender = gender 
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(0..140)
	end 

	def speak 
		puts "Ho, ho, ho! Haaaapy Holidays!"
	end 

	def eat_milk_and_cookie(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

#a method get the santa age after his/her birthday
	def celebrate_birthday
		santa_current_age = @age + 1 
	end 

#take an name as argument and move to the last position of the ranking array.
#we are inserting the name to the last index of the ranking array and use the same string/name to find the index of the same name array and delete it with delete_at.
	def get_mad_at(reindeer_name)
		@reindeer_ranking = reindeer_ranking.insert(-1 , reindeer_ranking.delete_at(reindeer_ranking.index(reindeer_name)))
	end 


end 


#The codes below are for release 1 
# #First we have to create two array for gender and ethnicity.
sant_genders = ["agender", "female", "bigender", "male", "female", "gender fluid","transgender"]
sant_ethnicities = ["black", "Latino", "white", "Asian", "prefer not to say", "Mystical Creature (unicorn)", "I can be whatever"]
# # We will have to push these elements from the array to the empty santa array.
# # add random elements of the array to the new empty santa arry by using sampl method.

# sant_genders.length.times do |i|
# 	santas << Santa.new(sant_genders.sample, sant_ethnicities.sample)
# end 


santas = []

#Release 4 
#Create a program that create numbers of santa according to user input.
puts "Hey, how many santa do you want to create for your SantaCon simulator"
num_santa = gets.chomp.to_i 

#The user input number will be how many santa instances we will be creating for the user.
num_santa.times do |num|
	santas << Santa.new(sant_genders.sample, sant_ethnicities.sample)
end 

#Each instances created for the array we can use an each loop to go through each instance and call out the instance varibales.
santas.each do |n|
	puts "----------------------"
	puts "This santa gender: #{n.gender}. "
	puts "This santa ethnicity: #{n.ethnicity}."
	puts "This santa is #{n.celebrate_birthday} years old."
	puts "Santa ranking: #{n.reindeer_ranking}."
	puts "----------------------"
end 

