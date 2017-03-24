#Guessing game pseudocodes.

#Guessing word game class.
#input: first user will be setting a secret word for second user to guess. 
#(example: player1 : "pizza" ,if player2 guess:"pizza" then the game is over)
#steps:
	#set up a class and initialize it with a few empty instance variable(I'm not sure how many yet)
	#one for player1,one for player2, one for guess count, one default false value.

class WordGame 
	attr_accessor :secret_word, :guess_word 
	attr_reader :guess_count, :store_guess_word, :update_word

	def initialize
		@secret_word = ""
		@guess_word = ""
		@store_guess_word = ""
		@guess_count = 0 
		@is_over = false 
		@guess_length = @secret_word.length 
		@update_word = []
		@split_secret_word = secret_word.split("")
	end 
	#The class will have method that:
		#use condition to check if player2's choice of word matches player1.
		#another method to check the guesses availability 
	def check_word(player1,player2)
		guess_count += 1 
		if @guess_word == @secret_word
			@store_guess_word = @guess_word
			@is_over = true 
		#should have an condition where the same guessing word does not increase the count.
		elsif @secret_word == @store_guess_word 
			guess_count -= 1 
			false 
		elsif @guess_count == @guess_length
			false 
		else 
			false 
		end 
	end 
##continue feed back for player2. Split the secret word to an array and iterate through the indexes.
	#if guess word matches the array's index element then it will push it to a new array, if condition does not match
		#then it will feed a "_" to the new array. 
	def word_update
		split_secret_word.each do |letter_of_word|
		  if letter_of_word != @guess_word 
		    @update_word << "_"
		  else 
		    @update_word << guess_word
		  end 
		end 
		 @update_word
	end 
  


end 

	
	
	#a loop that ask play1 for input (secret word) and player2 for the input to guess the secret word. 
		#The loop should ends when player2's guesses are over 1:secret word's length 2:player2 guess the secret word. 
		#a congratulatory message when the player2 input matches player1 input/a taungting message if player2 lost.





