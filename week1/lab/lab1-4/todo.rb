require_relative 'list'
require_relative 'item'

class Todo
    attr :list
    def initialize(filename = "todo.md")
        @filename = filename
        @list = List.new("Today")
    end
    
    def load_data
        lines = File.read(@filename).split("\n")
        lines.each {|line| @list.add(Item.new_from_line(line))}
    end
    
    def show_all
        @list.all.each {|item| p item.name}
    end
    
    def show_done
        @list.done.each {|item| p item.name}
        
    end
    
    
    def show_undone
        @list.undone.map.each {|item| p item.name}
    end
    
    def add(name)
        @list.add(Item.new(name: name))
    end
    
    def remove(index)
        @list.remove(index)
    end
    
    def prompt
        puts "What do you want to do?"
            #looks like 3 times password
            input = gets.chomp
            
            
            if input == "all"
                self.show_all
                
            elsif input == "done" 
                self.show_done
                
            elsif input == "undone"
                self.show_undone
            elsif input == "exit"
                p "Goodbye"
                exit
                
            else
                split_input = input.split("")
                if split_input[0] == "+"
                    new_task = split_input[2..-1].join
                    self.add(new_task)
                elsif split_input[0..5].join == "remove"
                    
                    remove_task_index = split_input[6..-1].join.to_i - 1
                    remove(remove_task_index)
                else
                    p "Problems"
                    exit
                end
            end
            
            
        end
        
        
    end
    
    
    todo = Todo.new
    todo.load_data
    spr
    puts todo.show_done
    spr
    puts todo.show_undone
    
    spr
    
    todo2 = Todo.new
    p todo2.add("Ask for help")
    
    # todop = Todo.new
    # todop.prompt
    # p todop
    
    
    spr
    
    todor = Todo.new
    todor.add("Go to sleep")
    todor.add("Don't ask")
    todor.add("Be lazy")
    todor.add("Do something")
    todor.add("Play some game")
    todor.show_all

    spr
    
    todor.prompt
    todor.show_all
    
    