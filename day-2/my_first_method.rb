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


def circumference(radius)
  pi = 3.14
  return 2*pi*radius
end

a = circumference(5)
puts a.to_i




def ask(message)
  print message
  gets.chomp
end

puts "Select a song: "

title = ask("Title: ")
artist = ask("Artist: ")
released = ask("Released year: ")


puts "You selected this song \"#{title}\" by #{artist}, released in #{released}."

=end

def assign_work
  puts "Hello #{@name} !"
  puts "You wil be a #{@role} for #{@time} hours."
end

print "Put your name: "
@name = gets.chomp

print "Put your role: "
@role = gets.chomp

print "Put time: "
@time = gets.chomp

assign_work


def com^
end
