###################
# Task 1: define a class Flower that takes a name and a color
# - add a writer method to set price for that flower
###################

class Flower
  # your code here
  
  attr_writer: price
  @@color
  @@name
  @@price
  
  def initialize(color, name)    
    @@color = color
    @@name = name
    
  end
  
  def price(price)
    @price = price
  end
  
  def price
    
  end
  
  # TEST:
  
  my_flower = Flower.new("roses", "red")
  my_flower.price = 10
  
  your_flower = Flower.new("violets", "blue")
  your_flower.price = 11
  
  ###################
  # Task 2: add a to_sentence method inside the class
  # NOTE: you can "open" the class again and write def to_sentence inside it
  ###################
  
  class Flower
    def to_sentence
      # your code here
    end
  end
  
  my_flower.to_sentence # => "roses are red"
  your_flower.to_sentence # => "violets are blue"
  
  ###################
  # Task 3: write a compare method that takes another flower and compare
  ###################
  
  class Flower
    def compare(another_flower)
      # your code here
    end
  end
  
  # TEST:
  my_flower.compare(your_flower) # => "Hey I am cheaper!"
  your_flower.compare(my_flower) # => "Yup, I am more expensive."
  
  ###################
  # Task 4: implement a Bouquet class that takes a list of flowers
  # add a add method that add a flower to the a list of flowers
  ###################
  
  class Bouquet
    def initialize(flowers = [])
      # your code here
    end
    
    def add(flower)
      # your code here
      # HINT: this updates your instance variable
      
      # puts "Great. Added #{flower.name} to the bouquet."
    end
    
    def flowers
      # your code here
      # HINT: this is a reader; return the instance variable
    end
  end
  
  
  my_bouquet = Bouquet.new # this will set the list of flowers to be empty
  puts "Flowers that I have: #{my_bouquet.flowers}" # this will print:"Flowers that I have: []"
  
  # now let's add more flowers to our bouquet
  my_bouquet.add(my_flower)
  my_bouquet.add(your_flower)
  
  # now check that you have two flowers
  puts "Flowers now: #{my_bouquet.flowers}"
  
  # OF COURSE, we can start a new bouquet with more than 0 flowers
  
  coderschool_bouquet = Bouquet.new([my_flower, your_flower])
  
  
  ###################
  # Task 4: add a total_price method in Bouquet class that returns the total price of all flowers in it
  ###################