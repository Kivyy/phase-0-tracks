=begin 
create empty hash for data storage
list out all the important keys
user input will be store in these keys
good mix of string,integer, and boolean data
print the hash at the end of the questionaire 
=end 

puts "Hello! Welcome to WTF interior design. Please kindly provide us with your name!"
client_name = gets.chomp 

puts "How old are you?"
client_age = gets.chomp.to_i

puts "Number of children in your house?"
client_children_count = gets.chomp.to_i

puts "Theme of the decor you want?"
client_decor_choice = gets.chomp 

puts "Are you in a rush to have the design complete? (y/n)"
client_rush = gets.chomp.downcase == "y"? true : false 

if client_rush == true 
  client_rush = "Yes"
else 
  client_rush = "No"
end 

interior_design = {
	name: client_name,
	age: client_age,
	children_count: client_children_count,
	theme: client_decor_choice,
	design_expetition: client_rush,

}

puts "Your name: #{interior_design[:name]}."
puts "You are #{interior_design[:age]} year old."
puts "You have #{interior_design[:children_count]} children in your house."
puts "Your choice of decor theme is #{interior_design[:theme]}."
puts "Design expedite: #{interior_design[:design_expetition]}"
puts "Please type 'y' if you need to update your information above if not you can type 'none' to skip this part."
update_choice = gets.chomp == "y"? true : false 

=begin 
Prompt a question to ask the user if they want to update the information
give user the choice of which category to update
update user new input into hash
print out updated information
=end 

if update_choice == true 
	puts "Which information do you want to update?[name/age/children/theme/expedite]?"
		update_keys = gets.chomp.downcase
		if update_keys == "name"
			puts "Please enter your new name."
			interior_design[:name] = update_name = gets.chomp 

		elsif update_keys == "age"
			puts "Please enter your age."
			interior_design[:age] = update_age = gets.chomp.to_i 

		elsif update_keys == "children" 
			puts "Please enter the number of children in your house."
			interior_design[:children_count] = update_children = gets.chomp.to_i

		elsif update_keys == "theme"
			puts "Please enter the new theme."
			interior_design[:theme] = update_theme == gets.chomp 

		elsif update_keys == "expedite"
			puts "Do you want to expedite your design?(y/n)"
			interior_design[:design_expetition] = update_rush = gets.chomp == "y"? true : false 
			
		else 
			puts "please make sure to type in : name , age , children , theme and expedite"
		end 
else 
	puts "No update needed."
end 

puts "Your updated name: #{interior_design[:name]}."
puts "You are #{interior_design[:age]} year old."
puts "You have #{interior_design[:children_count]} children in your house."
puts "Your choice of decor theme is #{interior_design[:theme]}."
puts "Design expedite: #{interior_design[:design_expetition]}"

puts "Thank you for choosing us!"
