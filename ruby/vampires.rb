puts "How many employees will be processed?"
employee_count = gets.chomp.to_i

until employee_count == 0 

employee_count -= 1 

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

	# Release 4 allergy's loop

	puts "Please list any allergies you have! One at a time"
	user_allergy = gets.chomp  

	secret_word = "done"
	trap_word = "sunshine"

	while user_allergy != secret_word
	 if user_allergy == trap_word 
	    break
	  end 
	  puts "Please say 'done' if you have listed all your allergies"
	  puts "If not , you may continue to list your allergies."
	  user_allergy = gets.chomp 
	end 


	# use this method to calculate user actual age and test if the user name.

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

	if user_age == user_real_age && (garlic_test || health_insurance) && !name_test && user_allergy != trap_word
		puts "#{user_name} is proabably not a vampire"
	elsif (user_age != user_real_age && (garlic_test || health_insurance)) || user_allergy == trap_word 
		puts "#{user_name} is probably a vampire"
	elsif user_age != user_real_age && !garlic_test && !health_insurance
		puts  "#{user_name} is almost cerntainly a vampire"
	elsif user_age == user_real_age && garlic_test && health_insurance && name_test 
		puts "#{user_name} is definitely a vampire!"
	else 
		puts "Results inconclusive"
	end 
end 

puts "Actually,never mind! What do these questions have to do with anything? Let's all be friends."



