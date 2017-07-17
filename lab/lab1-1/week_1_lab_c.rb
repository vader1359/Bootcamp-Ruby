puts "Milestone C1"
puts "I can code in Atom and run outside terminal"


rose_line  = "roses are red"
violet_line = "violets are blue"

puts rose_line[0].upcase()
puts rose_line

words = ["a", "b", "c"]
after_words =
puts words

def viet_hoa_dau_cau(sentence)
  # your code here
  sentence.sub("#{sentence[0]}", "#{sentence[0].upcase}")
end

puts viet_hoa_dau_cau("hello I'm iAn")

def join_sentence(sentences)
  converted_sentence = Array.new
  sentences.each do |s|
  converted_sentence << viet_hoa_dau_cau(s)
  end
  converted_sentence
end

def to_words(words)
  words.split(" ")
end

def backward(words)
  viet_hoa_dau_cau(to_words(words).reverse.join(" "))

end

def make_reverse_poem(lines_in_poem)
  reversed_poem = Array.new
  lines_in_poem.each do |l|
    reversed_poem << backward(l)
  end
  return reversed_poem
end


p to_words("Hello my name is iAn")
p backward("Hello my name is iAn")
puts make_reverse_poem(["Rose are red", "Violet is blue", "Ruby is cool", "So are you"])

puts join_sentence(["Hello", "friend"])

puts join_sentence([rose_line, violet_line,"Ruby is fun", "Cool so are you"])
puts "[Task 1] the following two must be true:"
puts "Roses are red" == viet_hoa_dau_cau(rose_line)
puts "Violets are blue" == viet_hoa_dau_cau(violet_line)
