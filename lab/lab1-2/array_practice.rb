def spr
    puts "\n" + "=" * 10 + "\n\n"
end

spr

# Take first 3 elements of an array

array = [1,2,3,4,5]
hash = Hash["a", 100, "b", 200, "c", 300]

p array.take(3)
p hash.take(2)

p array.drop(3)
p hash.drop(1)

# Remove nil value from array

array = [1,2,3, nil, 4, nil, 5, 7,8, 8, 8]
p array
p array.compact

# Get only unique value fro marray
array = [1,2,3, nil, 4, nil, 5, 7,8, 8, 8]
p array
p array.uniq

spr

p array
puts

array.compact.each {|a| print a -= 10, " "}

array.compact.reverse_each {|a| print a, " "}

spr

# Map method - REALLY IMPORTANT
array = [1,2,3,4,5]
p array
p array.map {|a| 2 * a}

# & means intersection
spr

array1 = [1,2,3,4,5]
array2 = [3,4,5,6]
p array1 & array2

spr

# array difference

p [1,2,2,3,3,4,5] - [1,2,4] 

spr

# map

array = ["a", "b", "c", "d"]
p array.collect {|a| a  + "!" }
p array.map.with_index {|x, i| x * i}

# Tinh xac suat group
array = [1, 2, 3, 4]

p array.combination(1).to_a
p array.combination(2).to_a
p array.combination(3).to_a
p array.combination(4).to_a

# cycle loop

array = [1, 2, 3, 4]
array.cycle(2) {|x| print x, " "}


