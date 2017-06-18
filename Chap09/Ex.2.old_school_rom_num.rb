=begin
This method will be expressing integers in Old Roman Numerals.
When passed an integer between 1 and 3000, the method will use a straight addition.
Example: if integer is 4 - the method will return "IIII"

For reference
#   one = 'I'
#   five = 'V'
#   ten = 'X'
#   fifty = 'L'
#   hundred = 'C'
#   five_hundred = 'D'
#   thousand = 'M'

Yuliya
=end

def old_roman_numeral num

  reps, num = num.divmod 1000
  roman = 'M' * reps
  reps, num = num.divmod 500
  roman += 'D' * reps
  reps, num = num.divmod 100
  roman += 'C' * reps
  reps, num = num.divmod 50
  roman += 'L' * reps
  reps, num = num.divmod 10
  roman += 'X' * reps
  reps, num = num.divmod 5
  roman += 'V' * reps
  reps, num = num.divmod 1
  roman += 'I' * reps

  roman
end

puts old_roman_numeral 3699
