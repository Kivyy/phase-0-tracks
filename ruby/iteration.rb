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

# Release 2 

numbers = [1,2,3,4,5,6,7,8,9,10]

word_digits = {
	one: 1,
	two: 2,
	three: 3,
	four: 4,
	five: 5,
	six: 6,
	seven: 7,
}

#question 1
p numbers.delete_if{|num|num < 5}

p word_digits.delete_if{|num , digit| digit < 5}

# question 2 
p numbers.select{ |num| num < 5}

p word_digits.select{|number , digit| digit < 5}

#question 3 
p numbers.find_all {|num| num % 2 == 0 }

p word_digits.find_all {|number , digit| digit % 2 == 0 }

#question 4 
p numbers.drop_while {|num| num < 3}

p word_digits.drop_while {|number , digit| digit < 4}