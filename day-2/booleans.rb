=begin

puts "Put your age:"
age = gets.chomp.to_i

if age < 18
  puts "You can not drink your beer!"
elsif age > 50
  puts "It's too late to dring a beer, sorry..."
else
  puts "Take your beer!"
end

=end

puts "Welcome to Manipulating Your Strings!"

print "Let us know the string you want to modify: "
text = gets.chomp

print "How would you like to modify it?\nType 'uppercase', 'lowercase', 'capitalize' or 'reverse': "
method = gets.chomp

case method
when "reverse"
  puts "This is your string backwards:"
  puts text.reverse
when "uppercase"
  puts "This is your string in all uppercase letters:"
  puts text.upcase
when "lowercase"
  puts "This is your string in all lowercase letters:"
  puts text.downcase
when "capitalize"
  puts "This is your string with its first character uppercased:"
  puts text.capitalize
else
  puts "Never mind!"
end
