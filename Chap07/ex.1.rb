=begin
This program will print out the lyrics of the song "99 Bottles of Beer on the Wall"
Yuliya
=end

puts "Do you know the song *99 Bottles of Beer on the Wall* ?\n".center(50)
puts
bottles = 99

while bottles > 0
  puts "#{bottles} bottles of beer on the wall,  #{bottles} bottles of beer."
  puts "Take one down and pass it around, #{bottles.to_i - 1} bottles of beer on the wall.\n"
  bottles -= 1
  puts
end

puts 'No more bottles of beer on the wall, no more bottles of beer.'.upcase
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'.upcase
