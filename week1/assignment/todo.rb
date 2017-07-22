require_relative 'list'
require_relative 'item'

class Todo
  attr_accessor :list
  
  def initialize(file_name = "todo.md")
    @file_name = file_name
    @list = List.new("Today")
  end
  
  def load_data()
    # The @filename will be the file_name gotten when Todo initialized
    lines = File.read(@file_name).split("\n") # -> array of item
    lines.map {|line| @list.add(Item.new_from_line(line))}
    
  end
  
  #=====================
  
  # Test
  # test_todo.load_data
  
  #=====================
  
  
  def save_data(file_name = "todo.md")
    File.open("todo.md", "w+") do |file|
      @list.items.map {|item| file.write("#{self.show_all}")}
    end
  end
  
  def add(name)
    @list.add(Item.new("#{name}"))
  end
  
  #=====================
  
  # Test
  # test_todo.add("Buying milk")
  # puts test_todo
  #=====================
  
  def delete(item_index)
    @list.delete(item_index)
  end
  
  
  def show_all()
    self.load_data
    @list.display
  end
  
  def show_done
    self.load_data
    @list.done
    @list.display
    
  end
  
  def show_undone
    self.load_data
    @list.undone
    @list.display
  end
  
  def display() 
    lines = File.read(@file_name).split("\n")
    
  end
  
  #=====================
  
  # Test
  # puts test_todo.display
  # puts test_todo.show_all
  # puts test_todo.show_done
  # puts test_todo.show_undone
  
  #=====================
  
  def prompt
    loop do puts "What do you want to do?"
      input = gets.chomp
      case input
    when "all" then # puts self.show_all
      break
    when "done" then # puts self.show_done
      break
    when "undone" then # puts self.show_undone
      break
    else
      if input[0] == "+" then self.add("#{input[2..-1]}")
      puts self.show_all
      break
    elsif input[0..5] == "remove" then self.delete((input[7]).to_i)
      # puts self.show_all
      break
    end
    break if input == "exit"
  end
  
end

#=====================

# Test
# test_todo.prompt

#=====================


end




end

#=====================

# Test
test_todo = Todo.new("todo.md")
# puts test_todo.display

#=====================

test_todo.add("Go home")
test_todo.add("Go to work")
# p test_todo
spr
test_todo.prompt
# p test_todo
# test_todo.save_data