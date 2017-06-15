=begin
Angry boss program
Whatever your tell this angry boss he will yell back to you and will fire you.
=end

puts 'Good afternoon, Mr. Brodsky'
puts 'WHAT DO YA WANT?'

while true
  you_say = gets.chomp
  if you_say.upcase == you_say
    puts 'Come on! I was only joking! You are not fired'
    break
  else
    puts 'WHADDAYA MEAN  "' + you_say + '"? YOU\'RE FIRED!!!!'
  end
end
