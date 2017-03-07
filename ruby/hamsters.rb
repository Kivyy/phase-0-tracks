puts "What is your hamster's name?"
hamster_name = gets.chomp 

puts "Is your hamster noisy? Rate between 1-10:"
hamster_volume = gets.chomp.to_i 


puts "What is your hamster's fur color?"
hamster_color = gets.chomp 

puts "Is your hamster well behave enough to be adopted? (y/n)"
hamster_behave = gets.chomp == "y" ? true : false 

puts "What is your hamster's age?"
hamster_age = gets.chomp 

hamster_age = nil if hamster_age == ""


puts "Hamster Bio "
puts "Hamster name : #{hamster_name}"
if hamster_volume >= 5 
	puts "Noise level : Jolly and cheerful and can keep you up all night"
else 
	puts "Noise level: Quiet like a ninja hamster"
end 
puts "Hamster' Fur color: #{hamster_color}"
if hamster_behave 
	puts "Temperament: Sweet and lovely (adoptable!)"
else 
	puts "Temperament: Will bounce off the wall (adopt at your own discretion!)"
end 

puts "Hamster's age : #{hamster_age}"



