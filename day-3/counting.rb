puts "Enter number from which you wish the countdown to start with: "
number = gets.chomp.to_i

while number > 0
  number -= 1
  puts number
end
