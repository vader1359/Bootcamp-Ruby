class Item
  def initialize(name, status = false)
    @name = name
    @status = status
  end
  
  def set_done
    @status = done
  end
  
  #=====================
  
  # Test:
  # p test_item.set_done
  
  #=====================
  
  
  def display
    if @status == true
      "[x] #{@name}"
    else
      "[ ] #{@name}"
    end
  end
  
  #=====================
  
  # Test:
  # p test_item.display
  
  #=====================
  
  
end


# Test

#==========================================

# Instance for test
test_item = Item.new("Go to CS", true)
puts test_item

#==========================================






