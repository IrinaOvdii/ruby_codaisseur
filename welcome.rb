print "Put your name: "
name = gets.chomp

puts "Hello #{name} !"


first_name = "Irina"
last_name = "Ovdii"
age = "31"

#concatenation
puts "My name is " + first_name + " " + last_name + " and my age is " + age

#interpolation
puts "My name is #{first_name} #{last_name} and my age is #{age}"


languages = "PHP \"Ruby\" Python Java C++ JavaScript"
frameworks = "\nRails\nDjango\nSymfony\nLaravel\nMeteor\nReact"

puts "These are languages: #{languages}"
puts "These are frameworks: #{frameworks}"
