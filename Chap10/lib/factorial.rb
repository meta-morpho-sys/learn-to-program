def factorial num
  if num < 0
    return 'You can\' take the factorial of a negative number'
  elsif num <= 1
    return 1
  else
    num * factorial(num - 1)
  end
end

puts factorial(0)
puts factorial(1)
puts factorial(4)
puts factorial(6)
