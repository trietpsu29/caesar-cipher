# frozen_string_literal: true

require_relative 'lib/caesar_cipher'

puts 'Enter your plaintext:'
plain_text = gets.chomp
puts 'Enter your key:'
key = gets.chomp.to_i
puts 'Result:'
puts caesar_cipher(plain_text, key)
