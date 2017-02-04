# retrns true if a string is a palindrone

def iterative_palindrone?(string)
  string.downcase!
  reversed_string = ''
  string.each_char do |char|
    reversed_string.prepend(char)
  end

  if string == reversed_string
    true
  else
    false
  end
end

def recursive_palindrone?(string)

end

p iterative_palindrone?('apple')
p iterative_palindrone?('racecar')
