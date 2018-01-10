friends = [
  {name: "Ksenija", occupation: "web-developer", city: "Amsterdam"},
  {name: "Alex", occupation: "ballet dancer", city: "Diemen"},
  {name: "Yurij", occupation: "web-designer", city: "Kiev"}
]

friends.each do |friend|
  puts "#{friend[:name]} lives in #{friend[:city]} and works as a #{friend[:occupation]}."
end
