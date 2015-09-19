require 'prime'

def number_of_factors(number)
  primes, powers = number.prime_division.transpose
  divisors = 1
  unless powers.nil?
    powers.each do |power|
      power += 1
      divisors *= power
    end
    divisors
  end
end

puts 'You would like to find the first triangle number that has how many factors?'
highest_factors = gets.chomp.to_i

triangle_num = 1
divisors = 0
i = 2
high_factor_number = 0

until divisors >= highest_factors
  triangle_num += i

  unless number_of_factors(triangle_num).nil?
    divisors = number_of_factors(triangle_num)

    if divisors > high_factor_number
      high_factor_number = divisors
    end
    puts " Triangle Number: #{triangle_num}  Index: #{i} Number of divisors: #{divisors}  Highest number of divisors so far: #{high_factor_number} "
  end
  i += 1
end

puts " First triangle number with #{highest_factors} factors: #{triangle_num}"
