friends = {name: "Ksenija", occupation: "web-developer", city: "Amsterdam"}

friends.each_key { |key| puts "It's a key: #{key}" }

friends.each_value do |value|
  puts "It's a value: #{value}"
end

friends.each_pair { |key, value| puts "It's a pair: #{key} is #{value}." }
