#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?
#Input: an integer n > 1

require 'prime'
puts "What number would you like to get the prime factors of?"
num = gets.chomp.to_i

p = Prime::EratosthenesGenerator.new.take_while {|i| i <= num}
p.each do |x|
  if(num%x == 0)
    puts x
  end
end
