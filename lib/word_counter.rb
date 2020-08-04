# creer une hash vide
# a chaque fois qu'une mot dans corpus coincide avec dictionary, on ajoute dans le hash (key: le mot, value: nbr de repetition)
# The scan method returns an array of all items in your string that match a given Regular Expression

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def word_counter(corpus, dictionary)
  hash = {}
  dictionary.each do |word|
    if corpus.downcase.scan(word).count > 0
      hash[word] = corpus.downcase.scan(word).count
    end
  end
  return hash
end

puts word_counter("below", dictionary)
puts word_counter("Howdy partner, sit down! How's it going?", dictionary)
