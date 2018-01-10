a = 0

loop do
  a = a + 1

  if a == 4
    next
  end
  
  if a.even?
    puts "#{a}"
  end

  if a == 10
    break
  end
end
