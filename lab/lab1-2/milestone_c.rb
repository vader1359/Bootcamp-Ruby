def spr
    puts "\n" + "=" * 10 + "\n\n"
end

task_priorities = [
{name: "sleep", priority: 1},
{name: "play", priority: 2},
{name: "eat", priority: 3},
{name: "work", priority: 4},
{name: "run", priority: 2},
{name: "walk", priority: 3},
{name: "swim", priority: 7},
{name: "shoot", priority: 6},
{name: "date", priority: 9},
{name: "nothing", priority: 10}
]


# Return the most important task
# def most_important_use_each(tasks)
#     most_important_task = Hash[:name,"sayhi",:priority,12]
#     puts most_important_task

#     comparable = most_important_task[:priority] <=> @task_priorities[3][:priority]
#     puts comparable



# end

# most_important_use_each(task_priorities)

def most_important(tasks)
    tasks.max_by{|name, priority| priority}
end


p most_important(task_priorities)

spr

# This is very important, need to remember this
# How to sort an array of hashes based on an element of hash ef sorted(tasks)
def sorted(tasks)
    tasks.sort_by {|task| task[:priority]}
end
puts sorted(task_priorities)

spr

def names_only(tasks)
    tasks.map {|task| task[:name]}
end

p names_only(task_priorities)

spr

def to_task(name, priority = 1)
    task = Hash[:name, "#{name}", :priority, priority]
    
end

p to_task("name", 2)

spr

def to_tasks(names)
    names.map.with_index {|name, index| Hash[:name, name.to_s, :priority, index]}
end

puts to_tasks(["Hello", "Die", "I hate you"])

spr

def to_tasks_random(names)
    random = Random.new
    names.map{|name| Hash[:name, name.to_s, :priority, random.rand(names.length)]}
    
end

puts to_tasks_random(["Hey", "Hello", "I'm dying"])

spr

old_task = Hash["name", "learn hash", "priority", 1]
puts old_task

def symbolize(old_task)
    hash = {}
    old_task.each do |key, value|
        hash[key.to_sym] = value
    end
    hash
end

puts symbolize(old_task)

spr

my_tasks = [
{"name"=>"learn symbol", "priority"=>1}, 
{"name"=>"review string", "priority"=>2}, 
{"name"=>"take a break", "priority"=>3}, 
{"name"=>"make code cleaner", "priority"=>4}
]

puts my_tasks

spr


def symbolist(tasks)
   tasks.map {|task| symbolize(task)} 
end

puts symbolist(my_tasks)





