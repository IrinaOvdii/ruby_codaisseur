=begin
def welcome
  puts "Welcome to Codaisseur"
end
welcome

def assign_work(name, role, time)
  puts "Hello #{name} !"
  puts "You wil be a #{role} for #{time} hours."
end

assign_work("Anna", "cat", 2)
assign_work("Tod", "dog", 3)


def area(length, width)
  return length*width
end

puts "The area is: #{area(5, 5)}"

=end

def circumference(radius)
  pi = 3.14
  return 2*pi*radius
end

a = circumference(5)
puts a.to_i
