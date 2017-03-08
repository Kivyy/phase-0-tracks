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



