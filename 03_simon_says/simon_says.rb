def echo(input)
  return input
end

def shout(input)
  return input.upcase
end

 def repeat(input, num=2)
   ([input] * num).join(" ")
 end

def start_of_word(input, num)
  chars = []
  num.times do |x|
    chars.push(input[x])
  end
  return  chars.join("")
end

def first_word(input)
  words = input.split
  return words[0]
end

def titleize(input)
  little_words = ["and", "the", "over"]
	input.split(' ').map.with_index {|word, x| (little_words.include?(word) && x != 0) ? word : word.capitalize }.join(' ')
end
