greatest = 0
(100..999).each do |i|
  (100..999).each do |j|
    num = (i * j).to_s
    half = (num.length / 2)
    if num[0..half - 1] == num[half..-1].reverse
      puts "Palindrome: #{num}"
      if num.to_i > greatest
        greatest = num.to_i
      end
    end
  end
end
puts "The Greatest Palindrome is: #{greatest}"
