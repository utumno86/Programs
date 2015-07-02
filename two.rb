sequence = [0, 1, 1]
sum = 0
while (sequence[-1] <= 4000000)
  term = sequence[-2] + sequence[-1]
  if (term%2 == 0)
    sum += term
  end
  sequence << term
end
puts sum
