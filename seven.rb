require 'prime'
puts 'What number prime would you like to get?'
num = gets.chomp.to_i

puts Prime.first num
