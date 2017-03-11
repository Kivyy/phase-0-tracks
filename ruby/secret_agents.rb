def encrypt(str)
	index = 0
	while index < str.length
		if str[index] == "z"
			p "a"
		else 
			p str[index].next.sub("!"," ")
		end 
		index += 1
	end
end



def decrypt(word)
	letter = "abcdefghijklmnopqrstuvwxyz"
	index = 0 
	while index < word.length 
		word_letter = word[index] 
    	num_letter = letter.index(word_letter)
    if word[index] == "a"
      p "z"
    elsif word[index] == " "
    	p " "
    else 
      p letter[num_letter - 1]
    end
      index += 1 
	end 
end 

=begin 
-ask if user wants to decrypt or encrypt a password
-ask user for input
-call method and print result
=end 

puts "Hey agent, do you want to decrypt or encrypt a password?"
pass_choice = gets.chomp 
	if pass_choice == "decrypt"
		puts "Please provide us with an input for decryption."
		agent_input = gets.chomp 
		decrypt(agent_input)
	elsif pass_choice == "encrypt"
		puts "Please provide us with an input for encryption"
		agent_input_two = gets.chomp
		encrypt(agent_input_two)
	else 
		puts "Please use the word: encrypt or decrypt"
	end 

