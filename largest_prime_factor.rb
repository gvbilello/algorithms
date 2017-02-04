def find_prime_factors(num)
  factors = []
  factor = 2
  # p 2
  loop do
    if num % factor == 0
      num = num / factor
      factors << factor
      p "#{factor} found as a prime factor!"
    else
      factor = generate_next_prime(factor)
    end
    if is_prime?(num)
      factors << num
      p "#{num} found as a prime factor!"
      break
    end
  end
  p factors
  # return largest prime factor
  return factors[-1]
end

def generate_next_prime(current_prime)
  # p "looking for the next prime"
  if current_prime == 2
    # p 3
    return 3
  else
    # p current_prime + 2
    if is_prime?(current_prime + 2)
      # p current_prime + 2
      return current_prime + 2
    else
      generate_next_prime(current_prime + 2)
    end
  end
end

def is_prime?(n)
  # p "checking to see if #{n} is prime"
  factors = 0
  (2..(n / 2).floor).each do |num|
    if n % num == 0
      return false
    end
  end
  return true if factors == 0
end

find_prime_factors(60081475143)
