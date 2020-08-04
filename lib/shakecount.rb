# Meme principe que word_counter

dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by",
 "this", "with", "i", "you", "it", "not", "or", "be", "are"]

 file = File.open("lib/shakespeare.txt")
 shake = file.read

 bad = File.read("lib/bad.txt").split
 

def word_counter(shake, dictionnary)
  hash = {}
  dictionnary.each do |word|
    if shake.scan(word).count > 0
      hash[word] = shake.scan(word).count
    end
  end
  return hash
end

puts word_counter(shake, dictionnary)

def badword_counter(inj, shk)
  hash2 = {}
  inj.each do |word|
    if shk.scan(word).count > 0
      hash2[word] = shk.scan(word).count
    end
  end
  return hash2
end

puts "--------------! bad word ! ---------------"
puts badword_counter(bad, shake)


