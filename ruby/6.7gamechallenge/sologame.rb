#Guessing game pseudocodes.

#Guessing word game class.
#input: first user will be setting a secret word for second user to guess. 
#(example: player1 : "pizza" ,if player2 guess:"pizza" then the game is over)
#steps:
#set up a class and initialize it with a few empty instance variable(I'm not sure how many yet)
#one for player1,one for player2, one for guess count, one default false value.
class WordGame
	attr_accessor :secret_word, :guess_word
	attr_reader :word_length_array, :word_array 

	def initialize
		@secret_word 
		@guess_word = []
		@word_length_array = []
		@word_array = []
		@guess_array =[]
		@is_over = false 
	end 
#make sure the secret word is split by ('') when getting user's input 
#guess count will be determine by the length of the secret word. You may retrieve this info with UI.
	def count_guess 
		num_guess = @secret_word.length 
		num_guess.times do 
			@word_length_array << "_"
		end 
		p @word_length_array
	end 
#a method that iterate through the secret word by index and if the guess word matches then it will return the letter matching the index
#in a new array. 
#use condition to check if player2's choice of word matches player1.
##continue feed back for player2. Split the secret word to an array and iterate through the indexes.

	# def check_word
	# 	@secret_word.each_index do |idx|
	# 		if @secret_word[idx] == @guess_word
	# 			@word_array[idx] = @guess_word 
	# 		else 
	# 			@word_array[idx] = "_"
	# 		end 
	# 	end 
	# 	p @word_array
	# end 
	def check_word(guess)
		@secret_word.each_index do |idx|
			if @secret_word[idx] == guess 
				@guess_word[idx] = guess 
			else 
				@guess_word[idx] = "_"
			end 
		end 
		p @guess_word
	end 

#a method that that check if the array matches the secret word. 

end 


# #User interface 
# puts "Welcome to the Word Game!"
# game = WordGame.new 
# puts "-------------------------"

# puts "Player 1, please provide us with a secret word"
# game.secret_word = gets.chomp.split("")
# game.guess_count = game.secret_word.length
# game.empty_array

# puts "Player 2: You have #{game.guess_count} times to guess the word."
# p game.space_array

# while !game.is_over 
# 	puts "You may guess now"
# 	guess = gets.chomp 
# 	game.check_word(guess)
# end 