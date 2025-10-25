def caesar_cipher(plain_text,key)
    letter_to_num = {
    'a' => 0,
    'b' => 1,
    'c' => 2,
    'd' => 3,
    'e' => 4,
    'f' => 5,
    'g' => 6,
    'h' => 7,
    'i' => 8,
    'j' => 9,
    'k' => 10,
    'l' => 11,
    'm' => 12,
    'n' => 13,
    'o' => 14,
    'p' => 15,
    'q' => 16,
    'r' => 17,
    's' => 18,
    't' => 19,
    'u' => 20,
    'v' => 21,
    'w' => 22,
    'x' => 23,
    'y' => 24,
    'z' => 25,
    }
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