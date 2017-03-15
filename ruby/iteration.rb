def print_name
	puts "Hello! What is your name?"
	user_name = gets.chomp 
	yield (user_name)
end 

print_name { |user_name| puts "Nice to meet you #{user_name}, welcome to ruby!"}