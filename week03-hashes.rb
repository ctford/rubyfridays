# Hashes connect keys to values. Copy the following into irb:
companies = {"sixth_floor" => "ThoughtWorks",
             "fourth_floor" => "Outbox"}

# Now try this:
# > companies["third_floor"]

# You can use hashes to create a complex thing with multiple parts.
# Type the following into irb.
john =
  {"first_name" => "John",
   "second_name" => "Smith",
   "age" => 77}

# Now try getting various attributes from john.
# > john["first_name"]
# > john["age"]
#
# One "gotcha" - the way we load files into irb means that you can't put
# the following into your .rb file and expect to have it appear in irb:

a = 4
b = {"foo" => "bar"}

# These don't work:
#
# > a
# > b
#
# However, if you create a and b in irb, then it will work:
#
# > a = 4
# > b = {"foo" => "bar"}
# > a
# > b

# Hashes work inside functions.
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

# If you want variables to show up in irb, you need to create them directly
# in irb. Functions created with "def" work just fine.

# Takes a person, and returns their full name e.g.:
#
#> full_name(gary)
def full_name(person)
  name = person["first_name"] + " " + person["last_name"]
  return name
end

# Challenge: write a function that takes a person, and returns how old they
# will be on their next birthday.
def next_birthday_of(person)
  # ????  
end

# Challenge: write a function that returns true if person1 is older
# than person2, otherwise false.
def is_older_than?(person1, person2)
  # ????
end
