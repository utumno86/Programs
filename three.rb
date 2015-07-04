require 'prime'
puts "What number would you like to get the prime factors of?"
num = gets.chomp.to_i

p = Prime::EratosthenesGenerator.new.take_while {|i| i <= Math.sqrt(num).to_i}
p.each do |x|
  if(num%x == 0)
    puts x
  end
end
