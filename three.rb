#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?
#Input: an integer n > 1

#Let A be an array of Boolean values, indexed by integers 2 to n,
#initially all set to true.

 #for i = 2, 3, 4, ..., not exceeding √n:
  #if A[i] is true:
    #for j = i2, i2+i, i2+2i, i2+3i, ..., not exceeding n :
      #A[j] := false

#Output: all i such that A[i] is true.

values = []
puts "What number would you like to find the primes of?"
num = gets.chomp.to_i
j = 1
(1..num).each do |i|
  values[i] = true
end

(2..Math.sqrt(num).to_i).each do |i|
  if values[i+1] == true
    while (i*j < num)
      values[i*j] = false
      j += 1
    end
  end
end

(1..num).each do |i|
  if values[i] == true
    puts i
  end
end
