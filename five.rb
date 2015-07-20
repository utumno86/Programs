require 'prime'
primes = Hash.new(0)
puts "This program claculates the smallest positive number that is evenly divisible by all of the numbers from 1 to a number.
What number would you like to use?"
high_num = gets.chomp.to_i
(2..high_num).each do |num|
  Prime.prime_division(num).each do |prime_factor|
     if prime_factor[1] > primes[prime_factor[0]]
       primes[prime_factor[0]] = prime_factor[1]
     end
  end
end
puts primes
product = 1
primes.each do |prime, exponent|
  product = product * (prime ** exponent)
end
puts product
