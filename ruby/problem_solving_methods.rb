=begin
-A method that takes two arguments. (the array and the item)
-method should be a search array method that will return the index of the array when the item has a match in the array
-Cannot use built in method like index so we will have to build the method around length and each
=end 




array = [1,2,3,4,5]

def search_array(arr,item)
  index = 0 
  include = false 
  arr.each do |num|
    if num == item
      include = true 
      return index 
    end 
    index += 1 
  end 
  if include = false 
    return nil 
  end 
end 

p search_array(array,6)
      