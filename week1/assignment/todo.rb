require_relative 'list'
require_relative 'item'

class Todo
  attr_accessor :list
  
  def initialize(file_name = "todo.md")
    @file_name = file_name
    @list = List.new("Today") # The problem is here? What the fuck is here?
  end
  
  def load_data()
    # The @filename will be the file_name gotten when Todo initialized
    lines = File.read(@file_name).split("\n") # -> array of item
    p @list
    puts lines.each {|line| @list.add(Item.new_from_line(line))}
    p @list
  end
  
  #=====================
  
  # Test
  # test_todo.load_data
  
  
  #=====================
  
  def show_all() # -> array
    self.load_data
    @list.display
  end
  
  def show_done
    # item_list = self.load_data
    # p item_list
    @list.display
   
  end
  
  def display() # -> array
    lines = File.read(@file_name).split("\n")
    
  end
  
  
  
  
end

#=====================

# Test
test_todo = Todo.new("todo.md")
# puts test_todo.display

#=====================

# puts test_todo
# puts test_todo.show_all
test_todo.load_data


# puts test_todo.show_all