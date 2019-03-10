# Lab 1
# Part I
def sum arr
  
  x = 0
  
  arr.each do |c|
    x += c
  end
  return x

end

# Part II
def max_2_sum arr
  
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else 
    arr.sort!
    return arr[-1] + arr[-2]
  end
    
end

# Part III
def sum_to_n? arr, n
  
if arr.length <= 1
  return false
else
  for x in 0..arr.length
    for y in ((x+1)...arr.length)
      if arr[x] + arr[y] == n
        return true
      end
    end
  end
end
return false
end