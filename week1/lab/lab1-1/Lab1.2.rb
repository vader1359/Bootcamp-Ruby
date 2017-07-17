def spr(task)
  puts "#{task}""\n" + "="*100 + "\n\n"

end

def spr
  puts "\n" + "="*100 + "\n\n"

end

singers = ["adele", "bieber", "me"]
puts singers[0]
puts singers[-1]

middle_index = singers.length / 2
puts middle_index
puts singers[middle_index]

spr
ratings = {"adele" => 5, "bieber" => 9, "me" => 9 }

spr
puts ratings
spr

p ratings.to_a # This cast all the element inside the hast to array, don't care about key or value
spr
p ratings.to_a.to_h # This group 2 element respectively and change it to key & value pairs?

p ratings.keys
p ratings.to_a.map{|e| e.first}

spr

puts ratings
puts ratings["adele"]

@ratings = ratings
spr

def better_singer(singer_a, singer_b)
   if @ratings[singer_a] > @ratings[singer_b]
     singer_a

   elseif @raints[singer_a] = @ratings[singer_b]

     singer_a
   else
     singer_b
   end
 end

puts better_singer("me", "bieber")

def total_rating(some_rating)
  @ratings.values.inject(:+)

end

spr
puts total_rating(@ratings)
