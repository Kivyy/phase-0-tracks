

def encrypt(str)
	puts str
	index = 0
	while index < str.length
		print str[index].next.sub("!"," ")
		index += 1
	end
end

encrypt("Fire Department")

def decrypt(word)
	letter = "abcdefghijklmnopqrstuvwxyz"
	index = 0 
	while index < word.length 
		word_letter = word[index] 
    	num_letter = letter.index(word_letter)
    print letter[num_letter - 1]
    index += 1 
	end 
end 

decrypt("bye")

