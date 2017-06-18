def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    return true if reply == 'yes'
    return false if reply == 'no'
      puts 'Please answer "yes" or "no".'
  end
end

ask 'Do you like reading?'
ask 'Does your mom like dogs?'
go_out = ask 'Do you want to go out?'  #Save this return value
puts
puts go_out
