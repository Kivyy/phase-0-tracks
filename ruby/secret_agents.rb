

def encrypt(str)
	index = 0
	while index < str.length
		if str[index] == "z"
			print "a"
		else 
			print str[index].next.sub("!"," ")
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
      print "z"
    else 
      print letter[num_letter - 1]
    end
      index += 1 
	end 
end 

print decrypt(encrypt("swordfish"))