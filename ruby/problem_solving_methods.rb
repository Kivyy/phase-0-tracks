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

#Release 2 

=begin
1. We chose Bubble sort as our sorting algorithm since it is the easier to understood.
2. What helps us grasp the concept of the algorithm is by visualizing it and manually fill in method.
3. It is extremely frustrated at first because we re not as familiar with array/data structure as we like to be. 
It is affecting our ability to learn because we often get intimated by the large method. But once we break it down and 
play it live one by one we got a better idea of how the sorting works.
=end 

=begin
4. Starting by creating a method that takes an array of integer 
set the length of the array (indexes) to a variable.
set another variable for the swapping process to default as false.
create a loop that will run as many times as the length of the array - 1 
Each loop will start with the first index/digit and set a IF condition
comparing the first two digits/indexes. If the value of index 2 is bigger than 1 ,
then those indexes will swap its position. If the value of index1 is bigger than index2,
then the swap variable will remind false and the loop will go on running each indexes until
the end of the array and the loop process will run again until the set loop times.
=end 

# This is the bubble sort  method.
def bubble_sort(array)
  n = array.length #4
  loop do
    swapped = false

   #3 (n-1).times do |i|
      if array[2] #7 > array[3]#2
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

bubble_sort([3,6,7,2])

