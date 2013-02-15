### Week 01 ###

0.upto(10) { |i|
  print " " * (10 - i)
  puts "*" * (2 * i + 1)
}

9.downto(0) { |i|
  print " " * (10 - i) 
  puts "*" * (2 * i + 1)
}

### Week 02 ###

def print_stars(number_of_stars) 
  puts "*" * number_of_stars
end

def print_diamond(size)
  # ???
end

def is_even?(number)
  if (number % 2 == 0)
    return true
  else
    return false
  end
end

def is_odd?(number)
  # ???
end

def is_fizz(number)
  # ???
end

def is_buzz(number)
  # ???
end

def print_fizzbuzz(size)
  # ???
end