require 'prime'
primes = Hash.new(0)
puts "I'm just going to assume you knw what number to put in."
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
  product *= (prime**exponent)
end
puts product
