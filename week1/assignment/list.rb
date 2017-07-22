require_relative "item"

def spr
  puts "\n#{"=" * 10}\n\n"
end

#=====================

class List
  
  def initialize(name, items = [])
    @name = items
    @items = items
  end
  
  def display
    @items.map {|item| item.display}
  end
  
  #=====================
  
  # Test
  # test_list.display
  
  #=====================
  
  def add(item)
    @items << item
  end
  
  #=====================
  
  # Test
  # test_list.add(Item.new("Go to CS", true))
  
  #=====================
  
end
#==========================================

# Instance for test
# test_list = List.new("test_list", [
# Item.new("test_item1", true),
# Item.new("test_item2")
# ])
# puts "Use the test_item to test methods above"
# # puts test_list.display
# spr

#==========================================

# test_list.add(Item.new("Go to CS", true))
# puts test_list.display




