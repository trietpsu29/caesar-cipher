def caesar_cipher(plain_text,key)
    letter_to_num = ('a'..'z').to_a.each_with_index.to_h
    num_to_letter = letter_to_num.invert
    plain_text.split('').reduce('') do |res,c|
        if (c >= 'a' && c <= 'z')
            res += num_to_letter[(letter_to_num[c]+key)%26]
        elsif (c >= 'A' && c <= 'Z')
            res += num_to_letter[(letter_to_num[c.downcase]+key)%26].upcase
        else
            res +=c
        end
    end
end
puts "Enter your plaintext:"
plain_text = gets.chomp
puts "Enter your key:"
key = gets.chomp.to_i
puts "Result:"
puts caesar_cipher(plain_text,key)
