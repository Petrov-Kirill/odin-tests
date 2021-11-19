# def caesar_cipher(str, shift)
#     #divide str by chars, transform each to codepoint and returns array
#     to_numbers = str.chars.map { |s| s.ord }

#     #basically just add shift number to our codepoint
#     shifted = to_numbers.map { |s| s + shift}

#     #turn numbers back to letters
#     shifted.map { |s| s.chr }.join
# end


# puts caesar_cipher("Lorem ipsum dolor sit amet. Caesar eat a lot of french cakes", 5)
# puts caesar_cipher("What a string!", 5)


# CAESAR ver 2

def caesar_cipher_1(str, shift = 1)
    alphabet = Array('a'..'z')
    encrypter = Hash[alphabet.zip(alphabet.rotate(shift))]
    str.chars.map { |c| encrypter.fetch(c, " ") }

end
puts caesar_cipher_1("What a string!", 5).join