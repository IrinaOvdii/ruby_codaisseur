ingredients  = [ "potatoes", "eggs", "onion", "oil", "salt" ]

ingredients.each_with_index do |recipe, index|
  puts "#{index + 1}. #{recipe}"

end
