# Strings and Regular Expressions

# Part I
def hello(name)
  return "Hello, #{name}"
end

# Part II
def starts_with_consonant? s
  
  if (!s || s.length == 0)
    return false
  else
    return !/\A[aeiou\W\d].*/i.match(s)
  end
  
end

# Part III
def binary_multiple_of_4? s

  if (s =~ /^[01]*00$/ || s =~ /^0+$/)
    return true
  end
  return false
  
end
