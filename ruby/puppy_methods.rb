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
  
end

dog = Puppy.new 
dog.fetch("bone")
dog.speak(6)

