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

interior_design = {
	name: client_name,
	age: client_age,
	children_count: client_children_count,
	Theme: client_decor_choice,
	design_expetition: client_rush,

}
