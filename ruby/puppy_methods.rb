class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(barkcounts)
    bark_length = barkcounts.to_i 
    bark_length.times do |bark|
      puts "Woof!"
    end
  end
  
  def roll_over(roll)
    print "*rolls over*"
  end 
  
end

dog = Puppy.new 
dog.fetch("bone")
dog.speak(6)
dog.roll_over("roll")

