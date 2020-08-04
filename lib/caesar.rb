def caesar_cipher (string, number)
  caesar_string = ""

  string.scan (/./) do |i|
    if ("a".."z").include? (i.downcase) # mettre au même niveau les input.
      number.times {i = i.next}
    end
    caesar_string << i[-1]
  end
  return caesar_string


end


print "quel message souhaiter vous cripter? "
text = gets.chomp
print "Decaler de combien? "
index = gets.chomp.to_i
puts caesar_cipher( text, index )
