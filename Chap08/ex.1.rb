=begin
This program will ask you to type as many words as you want(one word  per line)
and then will repeat the words back in alphabetical order.
=end

puts 'Enter here list of words'

mixed_array = []
while true
  word = gets.chomp
  break if word == ''

  mixed_array.push word
end

puts 'Thank you! Here is your sorted list of words:'
puts mixed_array.sort
