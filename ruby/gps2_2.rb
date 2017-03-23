# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create an empty hash
  # we will be splitting the string with a white space.
  #we will go through each value within the array and store it as the key value 
  # value of the key will be default quantity = 1 
  # print the list to the console using print method. 
def create(list_str)
	grocery_list = {}
	list_array = list_str.split(" ")

	list_array.map! do |item|
		grocery_list[item] = 1 
	end 
	grocery_list
end 

create("carrots apples cereal pizza")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
	#we will take an item name and item quantity.
	#We will add the information to the hash.
		#item => keys
		#quantity => key's value 
# output: the hash list

# Method to remove an item from the list
# input: the list , item name 
# steps: 
	#search the hash for the item name and then delete the item name from hash.
# output: the hash list 

# Method to update the quantity of an item
# input: the list, the item and quantity
# steps: 
	# search the hash keys for the item name 
	# assign new value to the specific key
# output: the hash list 

# Method to print a list and make it look pretty
# input: the list	
# steps:
	# Go through each value of the hash 
	# print keys and hash 
# output: the hash list 