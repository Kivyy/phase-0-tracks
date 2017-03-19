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
    next_consonant_name << "z"
    elsif word[index] == " "
    next_consonant_name << " "
    elsif word[index] == "a"
    next_consonant_name << "e"
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
	spy_final_name.capitalize!
end 

spy_name_generator("felicia torres")


=begin

#putting this method away from now. 
def name_swap(name)
	vowels = ["a","e","i","o","u"]
	consanants = "bcdfghjklmnpqrstvwxyz"
#the following part will be splitting the string into array and reverse the order so last name will be first.
	split_string = name.downcase.split(" ")
	reverse_name = split_string.reverse
#the following part will be a loop to check if the string include one of the vowels. 
	reverse_name.each do |letter|
	  if letter include? vowels
	    letter.sub()
	    
end 

name_swap("kiv lo")
=end 