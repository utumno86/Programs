sum = 0
(1..999).each do |i|
  if (i % 3 == 0) || (i % 5 == 0)
    puts "multiple of 3 or 5: #{i}"
    sum += i
    puts "running sum: #{sum}"
  end
end
puts sum
