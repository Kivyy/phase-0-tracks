#Guessing game pseudocodes.

#Guessing word game class.
#input: first user will be setting a secret word for second user to guess. 
#(example: player1 : "pizza" ,if player2 guess:"pizza" then the game is over)
#steps:
#set up a class and initialize it with a few empty instance variable(I'm not sure how many yet)
#one for player1,one for player2, one for guess count, one default false value.
class WordGame
	attr_accessor :secret_word, :guess_word
	attr_reader :word_length_array, :word_array , :num_guess ,:is_over 

	def initialize
		@secret_word 
		@guess_word = []
		@word_length_array = []
		@is_over = false 
		@num_guess = num_guess
		@word_include = false 
	end 
#make sure the secret word is split by ('') when getting user's input 
#guess count will be determine by the length of the secret word. You may retrieve this info with UI.
	def count_guess 
		@num_guess = @secret_word.length 
		@num_guess.times do 
			@word_length_array << "_"
		end 
		p @word_length_array
	end 
#a method that iterate through the secret word by index and if the guess word matches then it will return the letter matching the index
#in a new array. 
#use condition to check if player2's choice of word is included in the secret word. 
##continue feed back for player2. Split the secret word to an array and iterate through the indexes.	
	def check_word(guess)

		if @secret_word.include? (guess)
			@word_include = true 
			if @word_include == true 
			   @secret_word.each_index do |idx|
				    if @secret_word[idx] == guess 
					      @guess_word[idx] = guess 
					end 
				end
				answer_update
				check_win 
          	end 		
		else  
			false 
			@num_guess -= 1 
			puts "Wrong guess. Try again!"
		end 
	end 

#a methd to iterate through the guess's array and if the value is nil/false value then print "_"
	def answer_update 
		@guess_word.each_index do |i|
			@guess_word[i] ||= "_"
		end 
		p @guess_word
	end 

#a method that that check if the array matches the secret word. 
#if the values/elements of the guess word array matches the secret word array then is_over variable will return true.
	def check_win
		if @guess_word == @secret_word 
			@is_over = true 
			puts "Congrats! You won!"
		else
			false 
		end 

		if @num_guess == 0 
			@is_over = true
			puts "No more tries! You have lost."
		else 
			false
		end 
	end 

end 


# #User interface 
puts "Welcome to the Word Game!"
game = WordGame.new 
puts "-------------------------"

puts "Player 1, please provide us with a secret word"
game.secret_word = gets.chomp.split("")
game.count_guess

puts "Player 2: You have #{game.num_guess} tries to guess the word."

while !game.is_over 
	puts "Please guess a word."
	guess = gets.chomp 
	game.check_word(guess)
	if game.num_guess == 0
		puts "You have used up all your tries! Game Over."
	end 
	break if game.num_guess == 0 

end 