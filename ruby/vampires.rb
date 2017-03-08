puts "What is your name?"
user_name = gets.chomp

puts "What year were you born?"
user_birth_year = gets.chomp.to_i 

puts "and how old are you?"
user_age = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?(y/n)"
garlic_test = gets.chomp == "y" ? true : false 

puts "Would you like to enroll in the company's health insurance? (y/n)"
health_insurance = gets.chomp == "y" ? true : false 

# using this method to calculate user actual age and test if user_name is upcase.

def age_calculator(user_birth_year)
	date = Time.now.year 
	actual_age = date - user_birth_year 
end 

user_real_age = age_calculator(user_birth_year) 

def check_name(user_name)
	return true if user_name === "Drake Cula"
	return true if user_name === "Tu Fang"
	return false
end 

name_test = check_name(user_name)


# Condition matching starts here

if user_age == user_real_age && (garlic_test || health_insurance) && !name_test
	puts "Probably not a vampire"
elsif user_age != user_real_age && (garlic_test || health_insurance)
	puts "Probably a vampire"
elsif user_age != user_real_age && !garlic_test && !health_insurance
	puts "Almost certainly a vampire"
elsif user_age == user_real_age && garlic_test && health_insurance && name_test 
	puts "Definitely a vampire."
else 
	puts "Results inconclusive"
end 




