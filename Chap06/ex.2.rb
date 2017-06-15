=begin
This program will display a table of contents,
where the title will be placed in the center of the line, the chapters on the left side,
and pages on the right.
Yuliya
=end

title = 'Table of contents'.center(70)
chap_1 = 'Chapter 1 :'.ljust(20) + 'Getting started'.ljust(30) + 'Page  1'.rjust(20)
chap_2 = 'Chapter 2 :'.ljust(20) + 'Numbers'.ljust(30) + 'Page  9'.rjust(20)
chap_3 = 'Chapter 3 :'.ljust(20) + 'Letters'.ljust(30) + 'Page 13'.rjust(20)
puts title
puts
puts chap_1
puts chap_2
puts chap_3
