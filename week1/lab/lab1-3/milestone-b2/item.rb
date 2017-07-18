class Item
    attr_accessor :done
    def initialize(name)
        @name = name
    end
    
    def done?
        @done = false
    end
end

p item = Item.new("Hello")
puts item.done?
item.done = true
puts item.done

class Item
    def initialize(name, done = false)
        @name = name
        @done = done
    end
    
    def display
        if @done == false
            todo = "[ ] #{@name}"
        elsif @done == true
            todo = "[x] #{@name}"
            
        end
    end
end

p item1 = Item.new("Ian", true)
p item2 = Item.new("Harley")
p item1.display
p item2.display


