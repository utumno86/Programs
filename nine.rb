puts "What number would you like to find Pythagorean triplets for?"
number = gets.chomp.to_i
(1..number).each do |i|
  (1..(number - i)).each do |j|
    k = (number - i - j)
    unless k == 0
      if(k**2 + j**2 == i**2) && (i+j+k == number)
        @a = k
        @b = j
        @c = i
      end
    end
  end
end

puts "A: #{@a}  B: #{@b} C: #{@c}"
puts "A squared + B squared: #{@a**2 + @b**2}"
puts "C squared: #{@c**2}"
puts "A + B + C: #{@a+@b+@c}"
puts "A * B * C: #{@a*@b*@c}"
