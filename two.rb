sequence = [0, 1, 1]
sum = 0
while (sequence[-1] <= 400_000_0)
  term = sequence[-2] + sequence[-1]
  if term.even?
    sum += term
  end
  sequence << term
end
puts sum
