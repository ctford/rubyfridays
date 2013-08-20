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

# load "week02.rb"

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
  # Is it divisible by three?
end

def is_buzz(number)
  # Is it divisible by five?
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