sum_of_square = 0
square_of_sum = 0
puts 'Up to which natural number would you like to calculate the difference between the square of the sums and the sum of the squares?'
ceiling = gets.chomp.to_i

(0..ceiling).each do |num|
  sum_of_square += num**2
  square_of_sum += num
end
square_of_sum **= 2
puts "The sum of the squares is: #{sum_of_square}"
puts "The square of the sums is #{square_of_sum}"
puts "The difference is: #{square_of_sum - sum_of_square}"
