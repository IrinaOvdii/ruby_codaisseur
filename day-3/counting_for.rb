puts "Enter number from which you wish the countdown to start with: "
input = gets.chomp.to_i

for number in input.downto(0)
  puts number
end
