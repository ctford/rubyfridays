# load("week02.rb")

# In Ruby and other programming languages, you can take a little bit
# of code, and separate it out into your own function.
def print_stars(number_of_stars) 
  puts "*" * number_of_stars
end

# It works like this:
#
# > print_stars(3)
# ***
#  => nil

# Challenge: use print_stars() to make a print_diamond() function.
# See last week's work for how it should behave.
def print_diamond(size)
  # ???
end

# Here is another function that returns either true or false. In Ruby
# we normally end functions that return either true or false with a
# question mark.
def is_even?(number)
  if (number % 2 == 0)
    return true
  else
    return false
  end
end

# Challenge: take is_even?() and make an is_odd?() function.
def is_odd?(number)
  # ???
end

# Challenge: return true when the number is divisible by three.
def is_fizz(number)
  # Is it divisible by three?
end

# Challenge: return true when the number is divisible by five.
def is_buzz(number)
  # Is it divisible by five?
end

# Challenge: use your is_fizz?() and is_buzz?() functions to play
# FizzBuzz. See http://en.wikipedia.org/wiki/Fizz_buzz
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
