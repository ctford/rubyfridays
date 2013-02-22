# week 03

def is_even?(number)
  if (number % 2 == 0)
    return true
  else
    return false
  end
end

def is_odd?(number)
  return !is_even?(number)
end
 
 # https://gist.github.com/akash/5012126
def is_fizz(number)
  return is_divisible_by(number, 3)
end
 
def is_buzz(number)
  return is_divisible_by(number, 5)
end

def is_divisible_by(number, divisor)
  if (number % divisor == 0)
    return true
  else
    return false
  end  
end
 
def print_fizzbuzz(size)
  # Should print the following when you type print_fizzbuzz(7) in irb:
  #
  #> 1
  #> 2
  #> fizz
  #> 4
  #> buzz
  #> fizz
  #> 7
end