# returns true if two strings are isomorphic to one another

def isomorphic?(str1, str2)
  return false if str1.length != str2.length
  iso_hash = {}
  i = 0
  while i < str1.length
    if !iso_hash[str1[i]]
      iso_hash[str1[i]] = str2[i]
    else
      return false if iso_hash[str1[i]] != str2[i]
    end
    i += 1
  end

  return true
end

p isomorphic?('aab', 'xxy')
p isomorphic?('aab', 'xyz')
