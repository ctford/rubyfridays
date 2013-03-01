# Hashes connect keys to values:
companies = {"third_floor" => "ThoughtWorks",
             "fourth_floor" => "Outbox"}

#> companies["third_floor"]

# You can use hashes to create a complex thing with multiple parts:
john =
  {"first_name" => "John",
   "second_name" => "Smith",
   "age" => 77}

#> john["first_name"]

# You can, of course, use them inside functions...
def make_person(first_name, second_name, age)
  person =
    {"first_name" => first_name,
     "last_name"  => second_name,
     "age" => age,
     "species" => "human"}
  return person
end

# Type the following assignments into irb:
#
#> gary = make_person("Gary", "Jones", 33)
#> susan = make_person("Susan", "Jones", 35)
#> mike = make_person("Michael", "Jones", 3)

# Now try getting information from each person:
#
#> gary["first_name"]
#> susan["last_name"]
#> mike["age"]

# One "gotcha" - the way we load files into irb means that you can't put
# the following into your .rb file and load it:

a = 4
b = {"foo" => "bar"}

# If you want variables to show up in irb, you need to create them directly
# in irb. Functions created with "def" work just fine.

# Takes a person, and returns their full name e.g.:
#
#> full_name(gary)
def full_name(person)
  name = person["first_name"] + " " + person["last_name"]
  return name
end

# Takes a person, and returns how old they will be on their next birthday.
def next_birthday_of(person)
  # ????  
end

# Returns true if person1 is older than person2, otherwise false.
def is_older_than?(person1, person2)
  # ????
end

# We can make collections of complex things too! Try this in irb:
family = [gary, susan, mike]

# Max can be used with lists. If you give it a block that returns 0 if two
# values are the same, a negative number if the first is smaller or a 
# positive number if the first is bigger, then it will give you the highest.
[5, 3, 2].max do |a, b|
  a - b
end

[5, 4, 3].sort do |a, b|
  a - b
end

# Takes a list of people, and returns the oldest one.
# See say_hello_to_all(names) from last week
# (https://gist.github.com/akash/5012126).
def oldest_person_in_the_family(family)
  # ????
end

# Homework
#
# Take a list of families, and return the oldest person in any of the familes. 
def oldest_person_in_the_world(families)
  eldests = families.each do |family|
    # ????
  end
  # ????
end