def print_name
	puts "Hello! What is your name?"
	user_name = gets.chomp 
	yield (user_name)
end 

print_name { |user_name| puts "Nice to meet you #{user_name}, welcome to ruby!"}





hollywood_actors = ["Ben Affleck", "Matt Damon", "Christian Bale", "Jennifer Anniston"]

actors_movie = {
	Ben_affleck: "batman",
	Matt_Damon: "martian",
	Christian_Bale: "prestige",
	Jennifer_Anniston: "we're the Millers",
}

hollywood_actors.each do |actors| 
	puts "#{actors} is a famous person in a Hollywood movie"
end 

hollywood_actors.map! do |actors|
	puts actors 
	puts actors.upcase
end 

actors_movie.each do |actors , movie|
	puts "#{actors} was in the movie #{movie}."
end 

actors_movie.map do |actors, movie|
	puts "#{actors} #{movie} "
	puts "#{actors} #{movie.capitalize}"
end 

