
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
	elsif word[index] == "z"
	next_consonant_name == "b"	
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
#an interface that ask the user for the name. 


puts "Hello associate, please provide us with a name"
word = gets.chomp.downcase

alias_manager = Hash.new(word)
alias_manager[word] = spy_name_generator(word)

end_word = "quit"

until word == end_word
	puts "You may continue to provide us with a name or you can type 'quit' to exit the program."
	word = gets.chomp.downcase 
	if word != end_word 
	  alias_manager[word] = spy_name_generator(word)
	else 
	  break if word == end_word 
	end 
end 

alias_manager.each do |name,spyname|
  puts "#{name}'s spy name is #{spyname}."
end 

#RAN OUT OF TIME to fix the last part where quit is also store inside the hash.. gotta move on to assesment.
