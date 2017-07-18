class Item
  attr_accessor :name, :done

  def initialize(name, done = false)
    # ...
    @name = name
    @done = done
  end
  
  def done?
    @done
  end
  
  def mark_done!
    @done = true
  end
  
  def display
    if @done == true
      item = "[x] #{@name}"
    else
      item = "[ ] #{@name}"
      
    end
    item
  end
  
  # HINT: this method is written for you, but you can understand it
  # If you don't understand it yet, don't worry. Here's an example:
  # 
  # Item.new_from_line("- [ ] Have breakfast") 
  # is the same as:
  # Item.new("Have breakfast", false)
  # 
  # Item.new_from_line("- [x] Go to work")
  # is the same as:
  # Item.new("Go to work", true)
  
  def self.new_from_line(line)
    name = line[6..-1]
    done = line[3] == "x"
    Item.new(name, done)
  end
end

p item1 = Item.new("Have breakfast")

p item2 = Item.new("Go to work", true)

p item1.display
p item2.display

p item1.mark_done!

p item = Item.new_from_line("- [ ] Have breakfast")
p item.name
p item.done

# What is hte exclamation mark after mark_done! also, what is the ? after Done
# Is it self.new_from_line is a way to create second initialization in Ruby?