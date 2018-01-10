puts "All your socks are in place"


count = 0
loop do
  count += 2
  puts "you are missing #{count} left socks!" unless count == 8


  if count == 8
    puts "In total you are missing 8 left socks."

    break
  end
end
