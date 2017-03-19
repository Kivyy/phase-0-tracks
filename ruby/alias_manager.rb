=begin 
-swapping first and last name (we can do it by splitting the name into two parts in an array and reverse it )
- changing all the vowels into next vowels (aeoiu) will be (u become a ). 
- set a method that change the user input into an array with two part.
- set a loop to go through each character to detach any name with vowels and change it to next.
=end 

#attemp1 = changing all the consonant to the next consonant and then join them.

def spy_name_generator(word)
	letter = "bcdfghjklmnpqrstvwxyz"
	index = 0 
	next_consonant_name = []
	while index < word.length 
		word_letter = word[index] 
    	num_letter = letter.index(word_letter)
    if word[index] == "a"
    next_consonant_name << "e"
    elsif word[index] == " "
    next_consonant_name << " "
    elsif word[index] == "e"
    next_consonant_name << "i"
    elsif word[index] == "i"
    next_consonant_name <<  "o"
    elsif word[index] == "o"
    next_consonant_name << "u"
    elsif word[index] == "u"
    next_consonant_name << "a"
    else 
    next_consonant_name <<  letter[num_letter + 1]
    end
      index += 1 
	end 
	spy_pre_name = next_consonant_name.join
	spy_name = spy_pre_name.split(' ').reverse
	spy_final_name = spy_name.join(' ')
	spy_final_name.split.map { |i| i.capitalize }.join(' ')

end 

#Release 1 

puts "Hello associate, please provide us with a name"
word = gets.chomp.downcase

end_word == "quit"
until word ==  end_word 
	p spy_name_generator(word)
	puts "You may continue to provise us with a name or you can type 'quit' to quit the program."
	break if word == (" "|| "quit")
end 

