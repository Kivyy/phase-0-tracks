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
p search_array(array, 4)

#Release 1
=begin
Each number in the array is the sum of the previous two numbers.
Example of fib(6) should return with 6 indexes array [0, 1, 1, 2, 3, 5]
Fib logic = Xn = (Xn -1 ) + (Xn - 2)
=end 

#start off with a method that takes a number as argument.
# If the arugment is 4 , the loop will run 4 times and the first two time will meet the IF condition and put 0 and 1 into the array.


def fib(num) 
  fib_array = []
  index = 0 
  while index < num
    if index == 0 
      fib_array << index 
    elsif index == 1 
      fib_array << index 
    else
      fib_array << (fib_array[index - 1] + fib_array[index - 2 ])
    end
  index += 1 
  end 
  fib_array
end 
      

fib(100).last



