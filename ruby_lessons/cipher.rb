sentence = "abcde fghijklmnopqrstuvwxyz"

# get sentence and breakdown in to array
#whitespace ord number == 33
#iterate through the array and get ord for each item in array
# formula: encrypted_letter =  letter + shift % 26
#condition ? true : false


def caeser_cipher(str, shift)
#break down letters to array
  letters = ('a'..'z').to_a
  # map through chars in string
  # find the index in the string & downcase
  str.chars.map { |x| letters.include?(x.downcase) ? 
  # find the index of the current letter + shift - the size of the array
     letters[letters.find_index(x.downcase) + shift - letters.size] : x
    }.join
end

puts caeser_cipher("what is your name", 3)