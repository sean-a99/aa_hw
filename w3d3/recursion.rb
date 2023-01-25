# Recursion homework

#Exercise 1 - Sum to

def sum_to(n)
  return nil if n < 0
  return n if n <= 1
  n + sum_to(n - 1) 
end

# puts sum_to(5)  # => returns 15
# puts sum_to(1)  # => returns 1
# puts sum_to(9)  # => returns 45
# p sum_to(-8)  # => returns nil

def add_numbers(arr)
  return nil if arr.length == 0
  return arr[0] if arr.length == 1
  arr[0] + add_numbers(arr[1..-1])
end

# puts add_numbers([1,2,3,4]) # => returns 10
# puts add_numbers([3]) # => returns 3
# puts add_numbers([-80,34,7]) # => returns -39
# p add_numbers([]) # => returns nil

def gamma_fnc(n)
  gamma = n - 1
  return nil if gamma < 0
  return 1 if gamma <= 1
  gamma * gamma_fnc(n - 1)
end

# puts gamma_fnc(0)  # => returns nil
# puts gamma_fnc(1)  # => returns 1
# puts gamma_fnc(4)  # => returns 6
# puts gamma_fnc(8)  # => returns 5040

def ice_cream_shop(arr, favorite)
  return false if arr.length == 0
  return favorite == arr[0] if arr.length == 1
  unless arr[0] == favorite
    ice_cream_shop(arr[1..-1], favorite)
  else
    return true
  end
end

# puts ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
# puts ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
# puts ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
# puts ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
# puts ice_cream_shop([], 'honey lavender')  # => returns false

def reverse(str)
  return str if str.length <= 1
  str[-1] + reverse(str[0..-2])
end

puts reverse("house") # => "esuoh"
puts reverse("dog") # => "god"
puts reverse("atom") # => "mota"
puts reverse("q") # => "q"
puts reverse("id") # => "di"
p reverse("") # => ""