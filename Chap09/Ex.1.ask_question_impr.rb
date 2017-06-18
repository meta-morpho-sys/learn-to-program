def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if reply == 'yes'
      return true
    end
    if reply == 'no'
      return false
    end
      puts 'Please answer "yes" or "no".'
  end
end

ask 'Do you like reading?'
ask 'Does your mom like dogs?'
go_out = ask 'Do you want to go out?'  #Save this return value
puts
puts go_out
