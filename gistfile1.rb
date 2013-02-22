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
 # twpublic -> Ent3r-N3t
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
  1.upto(size) do |number|
    if(is_fizz(number) && is_buzz(number))
      puts "fizzbuzz"
    elsif(is_fizz(number))
      puts "fizz"
    elsif(is_buzz(number))
      puts "buzz"
    else
      puts number
    end
  end
end