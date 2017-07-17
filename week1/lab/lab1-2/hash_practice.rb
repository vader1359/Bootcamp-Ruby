def spr
    puts "\n" + "=" * 10 + "\n\n"
end
grades = {font_size: 10, font_family: "Arial"}

puts grades[:font_family]
puts grades

spr

grades = Hash.new
grades[:Dorothy] = 9

puts grades

spr

# Set the default value for the Hash

grades = Hash.new("No item here")
grades[:Hello] = "Yes, there is an item"

puts grades[:Hello]
puts grades[:Hi]
puts grades[:Help]

spr

grades = Hash.new
grades.default = "No use default"

puts grades[:Hello]

spr

# There are many ways to create a Hash
# Way 1: Just use comma (like CSV) is enough to create a hash
way1 = Hash["a", 100, "b", 200]
# Using Array of Array of Array_Pair (more clear but quite confused)
way2 = Hash[[["a", 100], ["b", 200]]]

# Original method with stupid arrow
way3 = Hash["a" => 100, "b" => 200]

# Return similar result
# => Avoid way 2, 3, use way 1 is the best
puts way1
puts way2
puts way3

spr

# Remove all data in hash
hash = Hash["a", 100, "b", 200]
puts hash

puts hash.clear
puts hash

# Delete key value in hash
hash = Hash["a", 100, "b", 200]
# Return the value of "a"
puts hash.delete("a")
puts hash # "a" has been deleted from hash

# We can also add a message if wrong select the key
puts hash.delete("z") {|el| "#{el} not found"}

spr

# delete the key_value pair with a condition


hash = Hash["a", 100, "b", 200, "c", 300, "d", 400]
puts hash
hash.delete_if {|key, value| value >= 250}

puts hash

#Besides,we can also use hash.keep_if{|key, value| block} to delete things

spr

# Each method with hash - REALLY IMPORTANT
hash = Hash["a", 100, "b", 200]
hash.each {|key, value| puts "#{key} is #{value}"}
hash.each_key{|key| puts key}
hash.each_value{|value| puts value}

spr

# Check if the value or key is available in hash
hash = Hash["a", 100, "b", 200]
puts hash.has_key?("a")
puts hash.has_key?("34")
puts hash.has_value?(100)
puts hash.has_value?(2009)

spr

# Make key becomes value and value becomes key
hash = Hash["a", 100, "b",200, "c", 300]
puts hash.invert

spr

hash = Hash["a", 100, "b", 200, "c", 300]

puts hash.key(100)
p hash.keys

spr

puts hash.length

spr

hash1 = Hash["a", 100, "b", 200]
hash2 = Hash["b", 254, "c", 300]

puts hash1.merge(hash2)
puts hash1
spr
puts hash1.merge(hash2){|key, oldval, newval| newval - oldval}
spr

puts hash1.merge(hash2)
puts hash1.merge(hash2){|key, v1, v2| v1}


spr



hash = Hash["a", 100, "b", 200]
puts hash
hash.replace(Hash["c", 300, "d", 400])
puts hash

spr

# select is like taking a substring of a Hash
hash = Hash["a", 100, "b", 200, "c", 300]
puts hash.select{|key, value| key > "a"}

spr

# Value at

hash = Hash["cat", "feline", "dog", "canine", "cow", "bovine"]
p hash.values_at("cow", "dog")



