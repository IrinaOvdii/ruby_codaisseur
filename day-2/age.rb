puts "What is your name?"
name = gets.chomp

puts "What is your age?"
age = gets.chomp.to_i

age_in_2040 = age + 2040 - 2018

puts "My name is #{name} and in the year 2040 I will be #{age_in_2040} years old."
