numbers = []

for n in 1..5
  numbers.push n
end

numbers.each do |num|
 puts "Adding #{num} to the list."
end

numbers.each do |num|
 puts "Number was: #{num}"
end


=begin
(1..5).each do |i|
  puts "Adding #{num} to the list."
  numbers.push(i)
end

=end 
