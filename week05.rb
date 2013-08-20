# A function to make a person Hash.
def make_person(first_name, second_name, age)
  person =
    {"first_name" => first_name,
     "last_name"  => second_name,
     "age" => age}
  return person
end

# Returns true if person1 is older than person2, otherwise false.
def is_older_than?(person1, person2)
  if (person1["age"] > person2["age"])
    return true
  else
    return false
  end
end

# Here's a shorter way or writing the same thing, which takes advantage of the fact
# that Ruby itself returns True or False depending on the outcome of the > comparison.
def is_older_than1?(person1, person2)
  return person1["age"] > person2["age"]
end

# Use the shorter way to work out if two people have the same first_name.
def has_same_first_name_as?(person1, person2)
  # ???
end

# There are many useful functions built into Ruby's built-in Arrays and Hashes.
#
# See http://ruby-doc.org/core-1.9.3/Array.html and http://ruby-doc.org/core-1.9.3/Hash.html
#
# These built-in functions are "attached" to pieces of data, like Arrays and Hashes. So
# far, all the functions we've created are "loose", which means you can just call them
# on their own. Functions that are "attached" are known as "methods", and we call them
# using a "."
#
# For example, first is a method on all Arrays.
a = [1, 2]
a.first()

# max is something you can do to Arrays, and it works by being given a "block"
# (the bit from "do" to "end") that returns a positive number if the first value is bigger,
# zero if they're the same and a negative number if the second value is bigger. 
[2, 3, 4].max do |a, b|
  a - b
end

# The reason that you have to supply the block is that max also works with more complicated
# things than numbers, like our person hashes.

# Takes a list of people, and returns the oldest one, using the max method.
def oldest_person(people)
  people.max do |person1, person2|
    person1["age"] - person2["age"]
  end
end

# map is also something you can do to Arrays. It works by being given a block, and returns a
# list that's the result of applying the block to each element in the first list. 
[2, 3, 4].map do |n|
  n+1
end

def first_names(people)
  people.map do |person|
    # ???
  end
end

# first_names([gary, susan])
# ["Gary", "Susan"]
