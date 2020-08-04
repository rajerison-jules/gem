# Dans la fonction:
# Generer une array allant de 1...n
# Selectionner tous ce qui est multiple de 3 ou de 5
# Calculer la sum de multiple de 3 ou de 5 dans l'array (1...n)
# si le nombre saisit n'est pas une integer, le calcul ne se fait pas

print 'Type a natural number: '
input = gets.chomp.to_r # (to_r) pour differencier les integers et les floats

def sum_of_3_and_5_multiples(nbr)
  nbr_a = (1...nbr).to_a
  ls35 = nbr_a.select { |x| (x % 3).zero? || (x % 5).zero? }
  if nbr % 1 != 0 || nbr < 0 # conditiions pour les entiers relatifs
    return 'I said natural number only idiot!'
  elsif nbr > 1000 # pour ne pas calculer les > 1000
    return 'too high!'
  else
    return ls35.sum
  end
end

puts sum_of_3_and_5_multiples(input)
