#Guessing game pseudocodes.

#Guessing word game class.
#input: first user will be setting a secret word for second user to guess. 
#(example: player1 : "pizza" ,if player2 guess:"pizza" then the game is over)
#steps:
#set up a class and initialize it with a few empty instance variable(I'm not sure how many yet)
#one for player1,one for player2, one for guess count, one default false value.
class WordGame
	attr_accessor :secret_word, :guess_word, :guess_count
	attr_reader :word_array, :is_over, :space_array


	def initialize 
#make sure the secret word is split by ('') when getting user's input 
		@secret_word = secret_word
#guess count will be determine by the length of the secret word. You may retrieve this info with UI.
		@guess_count = ""
		@word_array = []
		@is_over = false 
		@space_array = []
	end 
#use condition to check if player2's choice of word matches player1.
#iterate secret word and if guess letter matches then it will push to a new array or else push "_".
##continue feed back for player2. Split the secret word to an array and iterate through the indexes.

	def empty_array
		@secret_word.length.times do |times|
			@space_array << "_"
		end 
		@guess_count = @space_array.length 
		@space_array
	end 

	def check_word(guess)
		@secret_word.each do 
		end 
	end 


#a method that that check if the array matches the secret word. 
	def check_win 
		if @word_array == @secret_word
			puts "Congratulation. You won!"
			@is_over = true 
		else 
			false 
		end
	end 

end 


#User interface 
puts "Welcome to the Word Game!"
game = WordGame.new 
puts "-------------------------"

puts "Player 1, please provide us with a secret word"
game.secret_word = gets.chomp.split("")
game.guess_count = game.secret_word.length
game.empty_array

puts "Player 2: You have #{game.guess_count} times to guess the word."
p game.space_array