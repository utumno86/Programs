require 'prime'
puts "What number would you like to get the prime factors of?"
num = gets.chomp.to_i

p = Prime::EratosthenesGenerator.new.take_while {|i| i <= num.to_i}
sum = 0
p.each do |i|
  sum += i
end
puts sum
