puts "What is the current temperature: "
current_temperature = gets.chomp.to_i

=begin
if current_temperature < 5
  puts "Parka weather"
elsif (current_temperature > 4) && (current_temperature < 18)
  puts "Jacket weather"
else
  puts "T-shirt weather"
end
=end

if current_temperature.even?
  puts "Its even!"
else
  puts "Its not even"
end
