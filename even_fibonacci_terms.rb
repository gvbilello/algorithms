def fibonacci(n1, n2, sum)
  if n2 > 4000000
    return sum
  end
  sum += n2 if n2 % 2 == 0
  fibonacci(n2, n1 + n2, sum)
end

fibonacci(0, 1, 0)
