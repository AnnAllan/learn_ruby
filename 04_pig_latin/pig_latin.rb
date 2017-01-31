def translate(input)

  vowels = [ "a" , "e" , "i" , "o" , "u"]
  alphabet = ("a" .. "z").to_a
  consonants = alphabet - vowels

  letters = input.split

  letters.map! do |w|
    case
    when vowels.include?(w[0])
      w + 'ay'

    when w[0..2] == "squ"
      w[3..-1] + "squay"

    when w [0..1] == "qu"
      w[2..-1] + "quay"

    when w[0..2] == "thr"
      w [3..-1]+"thray"

    when w[0..2]== "sch"
      w[3..-1]+"schay"

    when consonants.include?(w[0]) &&
        consonants.include?(w[1])
        w [2..-1] + w [0..1]+ 'ay'

    else consonants.include?(w[0])
      w[ 1..-1] + w[0..0] + 'ay'
    end
  end

  return letters.join(" ")

end
