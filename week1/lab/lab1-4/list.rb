def spr
    puts  "\n" + "=" * 10 + "\n\n"
end
require_relative 'item'

class List
    attr_accessor :items
    
    def initialize(name, items = [])
        @items = items
        @name = name
    end
    
    def add(item)
        @items << item
    end
    
    def remove(index)
        @items.delete_at(index)
    end
    # This is how we should deal with object?
    # Create a class for object -> Create array for that object, here we can filter things
    def all
        @items.each {|item| p item}
    end
    def done
        @items.select {|item| item.done == true }
    end
    
    def undone
        @items.select {|item| item.done == false}
    end
    
    def display
        @items.map {|item| item.name}
        
    end
    
end

a = List.new("Today's list", [Item.new("Great", false)])
b = List.new("Today's list", [Item.new("first", true), Item.new("second", true)])
b.add(Item.new("Addition", false))
p a.items
p b.items

spr

puts b.display

spr

b.done.each {|item| p item.name}
spr
b.undone.each {|item| p item.name}

